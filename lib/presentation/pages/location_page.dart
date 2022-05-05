import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart' as ph;
import 'package:real/logic/bloc/user_profile_bloc.dart';
import 'package:real/logic/core/injection.dart';
import 'package:real/logic/cubit/auth_cubit.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  // late objects for initState
  late UserProfileBloc _userProfileBloc;
  late String? _fbId;

  final Location location = Location();
  LocationData? _location;
  StreamSubscription<LocationData>? _locationSubscription;
  String? _error;
  String? displayText;

  @override
  void initState() {
    // Get singleton profile bloc instance for posting patching
    _userProfileBloc = getIt<UserProfileBloc>();
    // Get firebaseId
    _fbId = getIt<AuthCubit>().getAuthUserModel()?.id;

    _checkPermissions().then((value) => () {
          _checkBackgroundMode();

          _listenLocation;

          location.changeSettings(
              accuracy: LocationAccuracy.high, distanceFilter: 1, interval: 10);
        });

    displayText = 'Listen location: ' + (_error ?? '${_location ?? "unknown"}');

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

        displayText = displayText ?? "Not  Yet " + '\n' + _location.toString();
      });
    });
    setState(() {});
  }

  Future<void> _stopListen() async {
    _locationSubscription?.cancel();
    setState(() {
      _locationSubscription = null;
    });
  }

  @override
  void dispose() {
    _locationSubscription?.cancel();
    setState(() {
      _locationSubscription = null;
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              displayText ?? 'Not Yet',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 42),
                  child: ElevatedButton(
                    child: const Text('Listen'),
                    onPressed:
                        _locationSubscription == null ? _listenLocation : null,
                  ),
                ),
                ElevatedButton(
                  child: const Text('Stop'),
                  onPressed: _locationSubscription != null ? _stopListen : null,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
