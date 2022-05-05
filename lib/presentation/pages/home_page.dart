import 'dart:async';

import 'package:animated_radial_menu/animated_radial_menu.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:real/constants/app_constants.dart';
import 'package:real/constants/util.dart';
import 'package:real/data/dataproviders/api_response.dart';
import 'package:real/data/models/profile_image_model/profile_image_model.dart';
import 'package:real/data/models/profile_user_model/profile_user_model.dart';
import 'package:real/logic/bloc/user_profile_bloc.dart';
import 'package:real/logic/core/injection.dart';
import 'package:real/logic/cubit/auth_cubit.dart';
import 'package:real/presentation/pages/matches_page.dart';
import 'package:real/presentation/router/router.gr.dart';
import 'package:real/presentation/widgets/auth_text_button.dart';
import 'package:real/presentation/widgets/error.dart';
import 'package:real/presentation/widgets/loading.dart';
import 'package:real/presentation/widgets/phone_number_display.dart';
import 'package:permission_handler/permission_handler.dart' as ph;
import 'package:real/presentation/widgets/real_auth_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late objects for initState
  late UserProfileBloc _userProfileBloc;
  late Util _mUtil;
  late String? _fbId;

  final Location location = Location();
  LocationData? _location;
  StreamSubscription<LocationData>? _locationSubscription;
  String? _error;

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    // If you're going to use other Firebase services in the background, such as Firestore,
    // make sure you call `initializeApp` before using other Firebase services.
    await Firebase.initializeApp();

    print("Handling a background message: ${message.messageId}");
  }

  @override
  void dispose() {
    // _locationSubscription?.cancel();
    // setState(() {
    //   _locationSubscription = null;
    // });
    _userProfileBloc.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // FCM
    // Request Permissions
    messaging.requestPermission();
    // Update the iOS foreground notification presentation options to allow
    // heads up notifications.
    messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    // Get singleton profile bloc instance for posting patching
    _userProfileBloc = getIt<UserProfileBloc>();
    // Get singleton Util instance
    _mUtil = getIt<Util>();
    // Get firebaseId
    _fbId = getIt<AuthCubit>().getAuthUserModel()?.id;

    _userProfileBloc.fetchUserProfile(_fbId!);
    _userProfileBloc.fetchUserProfileImage(_fbId!);

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      FirebaseMessaging.onBackgroundMessage(
          _firebaseMessagingBackgroundHandler);
      // subscribe to topic on each app start-up
      messaging.subscribeToTopic(_fbId!);

      // Location
      _checkPermissions();

      _checkBackgroundMode();

      location.changeSettings(
          accuracy: LocationAccuracy.high, distanceFilter: 1, interval: 10);

      setState(() {
        if (_locationSubscription == null) _listenLocation();
      });
      print("Build Completed, Started posting location");
    });

    super.initState();
  }

  Future<void> _checkPermissions() async {
    // Map<ph.Permission, ph.PermissionStatus> statuses =
    await [
      ph.Permission.location,
      ph.Permission.notification,
    ].request();
    // print(statuses[ph.Permission.location]);
  }

  Future<void> _checkBackgroundMode() async {
    final bool result = await location.isBackgroundModeEnabled();
    if (result == false) {
      setState(() async {
        await location.enableBackgroundMode(enable: true);
      });
    }
  }

  Future<void> _listenLocation() async {
    _locationSubscription =
        location.onLocationChanged.handleError((dynamic err) {
      if (err is PlatformException) {
        setState(() {
          _error = err.code;
        });
      }
      _locationSubscription?.cancel();
      setState(() {
        _locationSubscription = null;
      });
    }).listen((LocationData currentLocation) {
      setState(() {
        _error = null;
        _location = currentLocation;

        if (_location != null) {
          _userProfileBloc.postLocationData(
              _fbId!, _location!.longitude!, _location!.latitude!);
        }
      });
    });
  }

  Future<void> _stopListen() async {
    _locationSubscription?.cancel();
    setState(() {
      _locationSubscription = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (p, c) => p.isLoggedIn != c.isLoggedIn && !c.isLoggedIn,
      listener: (context, state) {
        AutoRouter.of(context).replace(const PhoneNumberSignInRoute());
      },
      child: WillPopScope(
        onWillPop: () => Future<bool>.value(false),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                topGradientColor,
                bottomGradientColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(60)),
                        color: Colors.white70,
                      ),
                      child: const AuthLogo(logoSize: 0.40)),
                  const SizedBox(
                    height: 30,
                  ),
                  RadialMenu(
                    children: [
                      RadialButton(
                        icon: const Icon(Icons.logout_sharp),
                        buttonColor: Colors.red,
                        onPress: () {
                          context.read<AuthCubit>().signOut();
                        },
                      ),
                      RadialButton(
                          icon: const Icon(Icons.edit_outlined),
                          buttonColor: topGradientColor,
                          onPress: () {
                            AutoRouter.of(context)
                                .push(const UserDemographics());
                          }),
                      RadialButton(
                        icon: const Icon(Icons.person_search_sharp),
                        buttonColor: topGradientColor,
                        onPress: () {
                          AutoRouter.of(context).push(const MatchesRoute());
                        },
                      ),
                      RadialButton(
                        icon: const Icon(Icons.people_outline),
                        buttonColor: topGradientColor,
                        onPress: () {
                          AutoRouter.of(context).push(const ChatsRoute());
                        },
                      ),
                    ],
                  ),
                  StreamBuilder<ApiResponse<ProfileUserModel>>(
                    stream: _userProfileBloc.userProfileStream,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        switch (snapshot.data!.status) {
                          case Status.loading:
                            return Loading(
                                loadingMessage: snapshot.data!.message);
                            break;
                          case Status.completed:
                            _mUtil.profileUserModel = (snapshot.data!.data!);

                            // Run image future
                            // Future.delayed(Duration.zero, () async {
                            try {
                              Future.delayed(Duration.zero, () async {
                                _mUtil.profileImageModel =
                                    await _userProfileBloc
                                        .fetchUserProfileImage(_fbId!);
                              });
                              // as ProfileImageModel?;
                            } catch (e) {
                              print(e.toString());
                            }
                            // });
                            // .then((value) => (_mUtil.isUserModelCompleted(
                            //         context, _mUtil.profileUserModel, false))
                            //     ? AutoRouter.of(context)
                            //         .replace(const UserDemographics())
                            //     : AutoRouter.of(context)
                            //         .push(const SurveyRoute()));

                            // AutoRouter.of(context)
                            //     .replace(const UserDemographics());
                            // if (_mUtil.isUserModelCompleted(
                            //     context, _mUtil.profileUserModel, false)) {
                            //   AutoRouter.of(context)
                            //       .replace(const UserDemographics());
                            // } else {
                            //   AutoRouter.of(context).push(const SurveyRoute());
                            // }
                            break;
                          case Status.error:
                            AutoRouter.of(context)
                                .replace(const UserDemographics());
                            // return ErrorOfAPI(
                            //   errorMessage: snapshot.data!.message,
                            //   onRetryPressed: () =>
                            //       _userProfileBloc.fetchUserProfile(_fbId!),
                            // );
                            break;
                        }
                      }
                      return Container();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
