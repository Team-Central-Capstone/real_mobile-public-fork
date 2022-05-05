import 'package:bottom_picker/bottom_picker.dart';
import 'package:bottom_picker/resources/arrays.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:real/constants/app_constants.dart';
import 'package:real/constants/util.dart';
import 'package:real/data/dataproviders/api_response.dart';
import 'package:real/data/models/profile_user_model/profile_user_model.dart';
import 'package:real/data/models/user_body_type_model/user_body_type_model.dart';
import 'package:real/data/models/user_gender_model/user_gender_model.dart';
import 'package:real/logic/bloc/user_body_type_bloc.dart';
import 'package:real/logic/bloc/user_gender_bloc.dart';
import 'package:real/logic/core/injection.dart';
import 'package:real/logic/cubit/auth_cubit.dart';
import 'package:real/presentation/widgets/error.dart';
import 'package:real/presentation/widgets/gradient_icon.dart';
import 'package:real/presentation/widgets/gradient_text.dart';
import 'package:real/presentation/widgets/height_calc.dart';
import 'package:real/presentation/widgets/image_chip.dart';
import 'package:real/presentation/widgets/loading.dart';

class DemographicsForm extends StatefulWidget {
  const DemographicsForm({Key? key}) : super(key: key);

  @override
  _DemographicsFormState createState() => _DemographicsFormState();
}

class _DemographicsFormState extends State<DemographicsForm> {
  final _birthdayController = TextEditingController();
  UserGenderModel? _chosenGender;
  UserBodyTypeModel? _chosenBodyType;
  List<UserGenderModel>? _allGenders;
  List<UserGenderModel>? _listChosenGender;
  List<int>? _listChosenGenderIds;

  late UserGenderBloc _userGenderBloc;
  late UserBodyTypeBloc _userBodyTypeBloc;

  late Util _mUtil;

  @override
  void dispose() {
    _userGenderBloc.dispose();
    _userBodyTypeBloc.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    // Get instances of blocs
    _userGenderBloc = getIt<UserGenderBloc>();
    _userBodyTypeBloc = getIt<UserBodyTypeBloc>();

    // Get Util instance
    _mUtil = getIt<Util>();

    // Fetch from web server
    _userGenderBloc.fetchUserGendersList();
    _userBodyTypeBloc.fetchUserBodyTypesList();

    _listChosenGender = <UserGenderModel>[];
    _listChosenGenderIds = <int>[];

    DateTime _now = DateTime.now();
    setState(() {
      _allGenders = null;
      // _listChosenGender?.add(-1);

      _birthdayController.text = DateFormat('MMM dd, yyyy')
          .format(DateTime(_now.year - 18, _now.month, _now.day))
          .toString();

      _mUtil.profileUserModel ??= ProfileUserModel(
          firebaseUserId: getIt<AuthCubit>().getAuthUserModel()?.id);

      if (_mUtil.profileUserModel?.gendersAttractedTo != null) {
        _listChosenGender = _mUtil.profileUserModel?.gendersAttractedTo!;
        for (var element in _listChosenGender!) {
          _listChosenGenderIds!.add(element.id!.toInt());
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.55,
      width: MediaQuery.of(context).size.width / 1.15,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Colors.white,
      ),
      padding: EdgeInsets.fromLTRB(
          0, 24, 0, MediaQuery.of(context).viewPadding.bottom),
      child: SingleChildScrollView(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
                alignment: Alignment.center,
                child: GradientText(
                  "Let's get to know each other",
                  gradientColors: const [topGradientColor, bottomGradientColor],
                  style: GoogleFonts.pacifico(
                    textStyle: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                alignment: Alignment.topLeft,
                child: GradientText(
                  "Please fill all required fileds *",
                  gradientColors: const [topGradientColor, Colors.grey],
                  style: GoogleFonts.encodeSansSc(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: ThemeData().colorScheme.copyWith(
                          primary: topGradientColor,
                        ),
                  ),
                  child: Column(
                    children: [
                      // FIRST NAME *

                      Tooltip(
                        waitDuration: const Duration(seconds: 1),
                        message: "What is your first name?",
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 24),
                          child: Form(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    GradientText(
                                      "First Name *",
                                      gradientColors: const [
                                        topGradientColor,
                                        Colors.grey
                                      ],
                                      style: GoogleFonts.encodeSansSc(
                                        textStyle: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    filled: true,
                                    border: UnderlineInputBorder(),
                                    labelText: 'What is your first name?',
                                    alignLabelWithHint: true,
                                    floatingLabelAlignment:
                                        FloatingLabelAlignment.center,
                                    icon: Icon(
                                      Icons.person,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: topGradientColor, width: 2)),
                                  ),
                                  initialValue:
                                      _mUtil.profileUserModel?.firstName ?? '',
                                  validator: (value) =>
                                      _mUtil.validateName(value),
                                  onChanged: (value) => {
                                    setState(() {
                                      _mUtil.profileUserModel =
                                          _mUtil.profileUserModel!.copyWith(
                                        firstName: value,
                                      );
                                    })
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // LAST NAME *
                      Tooltip(
                        waitDuration: const Duration(seconds: 1),
                        message: "What is your last name?",
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 24),
                          child: Form(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    GradientText(
                                      "Last Name *",
                                      gradientColors: const [
                                        topGradientColor,
                                        Colors.grey
                                      ],
                                      style: GoogleFonts.encodeSansSc(
                                        textStyle: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                TextFormField(
                                  initialValue:
                                      _mUtil.profileUserModel?.lastName ?? '',
                                  decoration: const InputDecoration(
                                    filled: true,
                                    border: UnderlineInputBorder(),
                                    labelText: "What is your last name?",
                                    alignLabelWithHint: true,
                                    floatingLabelAlignment:
                                        FloatingLabelAlignment.center,
                                    icon: Icon(
                                      Icons.person,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: topGradientColor, width: 2)),
                                  ),
                                  validator: (value) =>
                                      _mUtil.validateName(value),
                                  onChanged: (value) => {
                                    setState(() {
                                      _mUtil.profileUserModel =
                                          _mUtil.profileUserModel!.copyWith(
                                        lastName: value,
                                      );
                                    })
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // PREFERRED NAME
                      Tooltip(
                        waitDuration: const Duration(seconds: 1),
                        message: "Do you have a preferred name? (optional)",
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 24),
                          child: Form(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    GradientText(
                                      "Preferred Name",
                                      gradientColors: const [
                                        topGradientColor,
                                        Colors.grey
                                      ],
                                      style: GoogleFonts.encodeSansSc(
                                        textStyle: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                TextFormField(
                                  initialValue:
                                      _mUtil.profileUserModel?.preferredName ??
                                          '',
                                  decoration: const InputDecoration(
                                    filled: true,
                                    border: UnderlineInputBorder(),
                                    labelText: "What do people call you?",
                                    alignLabelWithHint: true,
                                    floatingLabelAlignment:
                                        FloatingLabelAlignment.center,
                                    icon: Icon(
                                      Icons.person,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: topGradientColor, width: 2)),
                                  ),
                                  validator: (value) =>
                                      _mUtil.validateName(value),
                                  onChanged: (value) => {
                                    setState(() {
                                      _mUtil.profileUserModel =
                                          _mUtil.profileUserModel!.copyWith(
                                        preferredName: value,
                                      );
                                    })
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // EMAIL ADDRESS *
                      Tooltip(
                        waitDuration: const Duration(seconds: 1),
                        message: "Enter your email address",
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 24),
                          child: Form(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    GradientText(
                                      "Email Address *",
                                      gradientColors: const [
                                        topGradientColor,
                                        Colors.grey
                                      ],
                                      style: GoogleFonts.encodeSansSc(
                                        textStyle: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                TextFormField(
                                  initialValue:
                                      _mUtil.profileUserModel?.email ?? '',
                                  decoration: const InputDecoration(
                                    filled: true,
                                    border: UnderlineInputBorder(),
                                    labelText: "What is your email address?",
                                    alignLabelWithHint: true,
                                    floatingLabelAlignment:
                                        FloatingLabelAlignment.center,
                                    icon: Icon(
                                      Icons.email,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: topGradientColor, width: 2)),
                                  ),
                                  validator: (value) =>
                                      _mUtil.validateEmail(value),
                                  onChanged: (value) => {
                                    setState(() {
                                      _mUtil.profileUserModel =
                                          _mUtil.profileUserModel!.copyWith(
                                        email: value,
                                      );
                                    })
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // BIRTHDATE *
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 24),
                        child: Form(
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  GradientText(
                                    "Birth Date *",
                                    gradientColors: const [
                                      topGradientColor,
                                      Colors.grey
                                    ],
                                    style: GoogleFonts.encodeSansSc(
                                      textStyle: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                              Tooltip(
                                  waitDuration: const Duration(seconds: 1),
                                  message: "Select you birth date",
                                  child: GestureDetector(
                                    onTap: () {
                                      {
                                        _openDatePicker(context);
                                      }
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          80, 0, 0, 0),
                                      child: Row(
                                        children: [
                                          (_mUtil.profileUserModel!.birthdate !=
                                                  null)
                                              ? Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: GradientText(
                                                      DateFormat(
                                                              'MMMM dd,  yyyy')
                                                          .format(DateTime
                                                              .parse(_mUtil
                                                                  .profileUserModel!
                                                                  .birthdate!))
                                                          .toString(),
                                                      style: GoogleFonts.encodeSansSc(
                                                        textStyle:
                                                            const TextStyle(
                                                                color:
                                                                    Colors.grey,
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      ),
                                                      gradientColors: const [
                                                        topGradientColor,
                                                        Colors.grey
                                                      ]),
                                                )
                                              : const SizedBox(),
                                          const GradientIcon(
                                              gradientColors: [
                                                topGradientColor,
                                                Colors.grey
                                              ],
                                              radius: 0.5,
                                              tileMode: TileMode.repeated,
                                              icon: Icons.edit,
                                              size: 20),
                                        ],
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),

                      // GENDER *
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 24),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                GradientText(
                                  "Gender *",
                                  gradientColors: const [
                                    topGradientColor,
                                    Colors.grey
                                  ],
                                  style: GoogleFonts.encodeSansSc(
                                    textStyle: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),

                            // _buildChips(),
                            RefreshIndicator(
                              semanticsLabel: "REFRESH",
                              onRefresh: () =>
                                  _userGenderBloc.fetchUserGendersList(),
                              child: StreamBuilder<
                                  ApiResponse<List<UserGenderModel>>>(
                                stream: _userGenderBloc.userGendersStream,
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    switch (snapshot.data!.status) {
                                      case Status.loading:
                                        return Loading(
                                            loadingMessage:
                                                snapshot.data!.message);
                                        break;
                                      case Status.completed:
                                        // print('this is the data:  '+ snapshot.data!.data.toString());
                                        //  List<UserGenderModel> list = snapshot.data!.data as List<UserGenderModel>;
                                        //  UserGenderModelList res = .toJson();

                                        // return Text(
                                        //     snapshot.data!.data.toString());
                                        Future.delayed(Duration.zero, () async {
                                          setState(() {
                                            _allGenders =
                                                (snapshot.data!.data!);
                                          });
                                        });

                                        return _buildGenderChips(
                                            snapshot.data!.data!);
                                        break;
                                      case Status.error:
                                        return ErrorOfAPI(
                                          errorMessage: snapshot.data!.message,
                                          onRetryPressed: () => _userGenderBloc
                                              .fetchUserGendersList(),
                                        );
                                        break;
                                    }
                                  }
                                  return Container();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),

                      //BODY TYPE *
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 24),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                GradientText(
                                  "Body Type *",
                                  gradientColors: const [
                                    topGradientColor,
                                    Colors.grey
                                  ],
                                  style: GoogleFonts.encodeSansSc(
                                    textStyle: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),

                            // _buildChips(),
                            RefreshIndicator(
                              semanticsLabel: "REFRESH",
                              onRefresh: () =>
                                  _userBodyTypeBloc.fetchUserBodyTypesList(),
                              child: StreamBuilder<
                                  ApiResponse<List<UserBodyTypeModel>>>(
                                stream: _userBodyTypeBloc.userBodyTypesStream,
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    switch (snapshot.data!.status) {
                                      case Status.loading:
                                        return Loading(
                                            loadingMessage:
                                                snapshot.data!.message);
                                        break;
                                      case Status.completed:
                                        return _buildBodyTypeChips(
                                            snapshot.data!.data!);
                                        break;
                                      case Status.error:
                                        return ErrorOfAPI(
                                          errorMessage: snapshot.data!.message,
                                          onRetryPressed: () =>
                                              _userBodyTypeBloc
                                                  .fetchUserBodyTypesList(),
                                        );
                                        break;
                                    }
                                  }
                                  return Container();
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            // HEIGHT *
                            Tooltip(
                              waitDuration: const Duration(seconds: 1),
                              message: "Please input your body height",
                              child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 24),
                                  child: Form(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      child: Column(children: [
                                        Row(
                                          children: [
                                            GradientText(
                                              "Height *",
                                              gradientColors: const [
                                                topGradientColor,
                                                Colors.grey
                                              ],
                                              style: GoogleFonts.encodeSansSc(
                                                textStyle: const TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ],
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            {
                                              showDialog(
                                                  context: context,
                                                  builder: (_) => AlertDialog(
                                                      backgroundColor: Colors
                                                          .white54
                                                          .withOpacity(0.9),
                                                      insetPadding:
                                                          const EdgeInsets.all(
                                                              20.0),
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      shape: const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius.circular(
                                                                      20.0))),
                                                      content: Builder(builder:
                                                          (BuildContext
                                                              context) {
                                                        return Container(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                          child:
                                                              const HeightCalculator(),
                                                        );
                                                      })));
                                            }
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                80, 0, 0, 0),
                                            child: Row(
                                              children: [
                                                (_mUtil.profileUserModel!
                                                            .heightInches !=
                                                        null)
                                                    ? Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: GradientText(
                                                            _mUtil.profileUserModel!
                                                                    .heightInches
                                                                    .toString() +
                                                                ' cm',
                                                            style: GoogleFonts.encodeSansSc(
                                                              textStyle: const TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                            gradientColors: const [
                                                              topGradientColor,
                                                              Colors.grey
                                                            ]),
                                                      )
                                                    : const SizedBox(),
                                                const GradientIcon(
                                                    gradientColors: [
                                                      topGradientColor,
                                                      Colors.grey
                                                    ],
                                                    radius: 0.5,
                                                    tileMode: TileMode.repeated,
                                                    icon: Icons.edit,
                                                    size: 20),
                                              ],
                                            ),
                                          ),
                                        )
                                      ]))),
                            ),

                            // SHORT DESCRIPTION
                            Tooltip(
                              waitDuration: const Duration(seconds: 1),
                              message:
                                  "Write a short description about yourself? (optional)",
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 0, 24),
                                child: Form(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          GradientText(
                                            "Profile Intro",
                                            gradientColors: const [
                                              topGradientColor,
                                              Colors.grey
                                            ],
                                            style: GoogleFonts.encodeSansSc(
                                              textStyle: const TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                      TextFormField(
                                        maxLines: 3,
                                        decoration: const InputDecoration(
                                          filled: true,
                                          border: UnderlineInputBorder(),
                                          labelText:
                                              "Write a short description about yourself?",
                                          alignLabelWithHint: true,
                                          helperText: "Keep it short!",
                                          floatingLabelAlignment:
                                              FloatingLabelAlignment.center,
                                          icon: Icon(
                                            Icons.description,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: topGradientColor,
                                                  width: 2)),
                                        ),
                                        // validator: (value) =>
                                        //     mUtil.validateName(value),
                                        onChanged: (value) => {
                                          setState(() {
                                            _mUtil.profileUserModel = _mUtil
                                                .profileUserModel!
                                                .copyWith(
                                              profileIntro: value,
                                            );
                                          })
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 24),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      GradientText(
                                        "Attracted To Gender/s *",
                                        gradientColors: const [
                                          topGradientColor,
                                          Colors.grey
                                        ],
                                        style: GoogleFonts.encodeSansSc(
                                          textStyle: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),

                                  // _buildChips(),
                                  (_allGenders != null)
                                      ? _buildAttractedToGenderChips(
                                          _allGenders!)
                                      : Container(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _openDatePicker(BuildContext context) {
    // call dateTime once
    DateTime _now = DateTime.now();
    // display picker
    BottomPicker.date(
      layoutOrientation: LAYOUT_ORIENTATION.ltr,
      title: 'Birth Date *',
      // max date to be 18 years
      maxDateTime: DateTime(_now.year - 18, _now.month, _now.day),
      // no more dating at 101, pray for next journey
      minDateTime: DateTime(_now.year - 100, _now.month, _now.day),
      // month-day-year
      dateOrder: DatePickerDateOrder.mdy,
      // bg color
      backgroundColor: topGradientColor,
      //
      // initialDateTime:
      //  (_birthdayController.text!="")?
      //  (){return
      // DateFormat('MMM dd, yyyy').parse(_birthdayController.text)
      // ;}
      // ,
      buttonAlignement: MainAxisAlignment.spaceAround,
      buttonText: "SELECT",
      buttonTextStyle: GoogleFonts.encodeSansSc(
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
      ),
      buttonSingleColor: bottomGradientColor,
      dismissable: true,
      displayButtonIcon: false,
      displayCloseIcon: true,
      gradientColors: const [topGradientColor, bottomGradientColor],
      height: MediaQuery.of(context).size.height / 2,
      iconColor: bottomGradientColor,
      pickerTextStyle: GoogleFonts.encodeSansSc(
        textStyle: const TextStyle(
            color: Colors.black87, fontSize: 16, fontWeight: FontWeight.w500),
      ),
      titleStyle: GoogleFonts.encodeSansSc(
        textStyle: const TextStyle(
            color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500),
      ),
      onChange: (index) {
        setState(() {
          _birthdayController.text =
              DateFormat('MMM dd, yyyy').format(index).toString();
        });
        // print(index);
      },
      onSubmit: (index) {
        setState(() {
          _birthdayController.text =
              DateFormat('MMM dd, yyyy').format(index).toString();
          _mUtil.profileUserModel = _mUtil.profileUserModel!.copyWith(
            birthdate: index.toIso8601String(),
          );
        });
        // print(index);
      },
      bottomPickerTheme: BOTTOM_PICKER_THEME.plumPlate,
    ).show(context);
  }

  Widget _buildGenderChips(List<UserGenderModel> userGenders) {
    final List<Widget> chips = [];
    for (int i = 0; i < userGenders.length; i++) {
      final FilterChip filterChip = FilterChip(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        selected: _mUtil.isGenderSelected(
            _mUtil.profileUserModel?.userGenderId ?? _chosenGender?.id,
            userGenders[i].id!),
        showCheckmark: false,
        tooltip: "Select gender: " + userGenders[i].name!.toUpperCase(),
        label: Text(
          userGenders[i].name!,
          style: GoogleFonts.encodeSansSc(
            textStyle: const TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        // padding: EdgeInsets.symmetric(
        //     horizontal: MediaQuery.of(context).size.width / 8, vertical: 10.0),
        avatar: _mUtil.getGenderImage(userGenders[i]),
        elevation: 10,
        pressElevation: 5,
        shadowColor: Colors.teal,
        backgroundColor: Colors.white70,
        selectedColor: topGradientColor,
        onSelected: (bool selected) {
          setState(() {
            _chosenGender = userGenders[i];

            _mUtil.profileUserModel = _mUtil.profileUserModel!.copyWith(
              userGenderId: _chosenGender?.id ?? 0,
            );
          });
        },
      );

      chips.add(Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: filterChip,
      ));
    }

    return Wrap(
      // shrinkWrap: true,
      spacing: 15.0, // gap between adjacent chips
      runSpacing: 0.0, // gap between lines

      // scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  Widget _buildAttractedToGenderChips(List<UserGenderModel> userGenders) {
    final List<Widget> chips = [];

    for (int i = 0; i < userGenders.length; i++) {
      final FilterChip filterChip = FilterChip(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        selected: (_listChosenGenderIds != null)
            ? _listChosenGenderIds!.contains(userGenders[i].id)
            : false,
        showCheckmark: false,
        tooltip:
            "Select attracted to gender: " + userGenders[i].name!.toUpperCase(),
        label: Text(
          userGenders[i].name!,
          style: GoogleFonts.encodeSansSc(
            textStyle: const TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        // padding: EdgeInsets.symmetric(
        //     horizontal: MediaQuery.of(context).size.width / 8, vertical: 10.0),
        avatar: _mUtil.getGenderImage(userGenders[i]),
        elevation: 10,
        pressElevation: 5,
        shadowColor: Colors.teal,
        backgroundColor: Colors.white70,
        selectedColor: topGradientColor,
        onSelected: (bool selected) {
          setState(() {
            if ((_listChosenGenderIds != null) &&
                !_listChosenGenderIds!.contains(userGenders[i].id!)) {
              _listChosenGender?.add(userGenders[i]);
              _listChosenGenderIds?.add(userGenders[i].id!);
            } else if ((_listChosenGender != null) &&
                _listChosenGenderIds!.contains(userGenders[i].id)) {
              _listChosenGender?.remove(userGenders[i]);
              _listChosenGenderIds?.remove(userGenders[i].id);
            }

            _mUtil.profileUserModel = _mUtil.profileUserModel!.copyWith(
                userAttractedGenderIds: _listChosenGenderIds,
                gendersAttractedTo: _listChosenGender);
          });
        },
      );

      chips.add(Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: filterChip,
      ));
    }

    return Wrap(
      // shrinkWrap: true,
      spacing: 15.0, // gap between adjacent chips
      runSpacing: 0.0, // gap between lines

      // scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  Widget _buildBodyTypeChips(List<UserBodyTypeModel> userBodyTypes) {
    final List<Widget> chips = [];
    for (int i = 0; i < userBodyTypes.length; i++) {
      final ImageChip filterChip = ImageChip(
        imagePadding: const EdgeInsets.only(left: 25),
        height: 50.0,
        selected: _mUtil.isBodyTypeSelected(
            _mUtil.profileUserModel?.userBodyTypeId ?? _chosenBodyType?.id,
            userBodyTypes[i].id!),
        selectedColor: topGradientColor,
        img: _mUtil.getBodyTypeImage(
            _mUtil.profileUserModel?.userGender ?? _chosenGender,
            userBodyTypes[i]),
        txt: (userBodyTypes[i].name!.toLowerCase() == 'dadbod' &&
                ((_mUtil.profileUserModel?.userGender?.name != null)
                    ? _mUtil.profileUserModel?.userGender?.name!
                            .toLowerCase() !=
                        'male'
                    : _chosenGender?.name!.toLowerCase() != 'male'))
            ? 'Flaunty'
            : userBodyTypes[i].name!,
        onTap: () => setState(() {
          _chosenBodyType = userBodyTypes[i];

          _mUtil.profileUserModel = _mUtil.profileUserModel!.copyWith(
            userBodyTypeId: _chosenBodyType?.id ?? 0,
          );
        }),
      );
      chips.add(Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: filterChip,
      ));
    }

    return Wrap(
      // shrinkWrap: true,
      verticalDirection: VerticalDirection.down,
      spacing: 25.0, // gap between adjacent chips
      runSpacing: 0.0, // gap between lines
      // scrollDirection: Axis.horizontal,
      children: chips,
    );
  }
}
