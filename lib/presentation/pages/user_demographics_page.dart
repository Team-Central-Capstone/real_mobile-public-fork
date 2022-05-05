import 'dart:convert';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:real/constants/app_constants.dart';
import 'package:real/constants/util.dart';
import 'package:real/data/models/profile_image_model/profile_image_model.dart';
import 'package:real/data/models/profile_user_model/profile_user_model.dart';
import 'package:real/logic/bloc/user_profile_bloc.dart';
import 'package:real/logic/controllers/nsfw_detector.dart';
import 'package:real/logic/core/injection.dart';
import 'package:real/logic/cubit/auth_cubit.dart';
import 'package:real/presentation/router/router.gr.dart';
import 'package:real/presentation/widgets/auth_text_button.dart';
import 'package:real/presentation/widgets/demographics_form.dart';
import 'package:real/presentation/widgets/profile_picture_circle.dart';

class UserDemographics extends StatefulWidget {
  const UserDemographics({Key? key}) : super(key: key);

  @override
  _UserDemographicsState createState() => _UserDemographicsState();
}

class _UserDemographicsState extends State<UserDemographics> {
  // late objects for initState
  late UserProfileBloc _userProfileBloc;
  late Util _mUtil;
  late FaceDetector _faceDetector;
  late bool _newUser;
  late String? _fbId;
  late NSFWDetector _nsfwDetector;

  // img and imgToDecode for camera func
  Image? _img;
  InputImage? _imageToDecode;

  @override
  void dispose() {
    _userProfileBloc.dispose();    
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    // initalized nsfw detector class
    _nsfwDetector = NSFWDetector('assets/nsfw.tflite', true, true, 2);

    // Get firebaseId
    _fbId = getIt<AuthCubit>().getAuthUserModel()?.id;

    // Get singleton profile bloc instance for posting patching
    _userProfileBloc = getIt<UserProfileBloc>();
    // Get singleton Util instance
    _mUtil = getIt<Util>();
    // Get FaceDetector instance for mlKit face detection
    _faceDetector = GoogleMlKit.vision.faceDetector();
    // if profile is empty in util
    if (_mUtil.profileUserModel == null) {
      // it is a new user
      _newUser = true;
      // create an instance of profile
      _mUtil.profileUserModel = ProfileUserModel(firebaseUserId: _fbId);
    } else {
      // it is an old user
      _newUser = false;
      if (_mUtil.profileImageModel != null) {
        _mUtil.profileImageModel = _mUtil.profileImageModel!
            .copyWith(base64ImageString: _mUtil.profileImageModel!.image);
      }
      print(_mUtil.profileImageModel);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // Background UI
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
        body: SafeArea(
          child: KeyboardVisibilityBuilder(
              builder: (BuildContext context, bool isKeyboardVisible) {
            final Size size = MediaQuery.of(context).size;
            return SingleChildScrollView(
              child: SizedBox(
                height: size.height,
                width: size.width,
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 30, left: MediaQuery.of(context).size.width - 150),
                    child: AuthTextButton(
                      text: "NEXT",
                      onPressed: () async {
                        // if no image
                        if (_mUtil.profileImageModel == null) {
                          // show message to select an image
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            behavior: SnackBarBehavior.floating,
                            content:
                                Text('Please add a profile picture to proceed'),
                            backgroundColor: Colors.red,
                          ));
                        } else {
                          try {
                            // if image is present check profile is completed
                            if (_mUtil.isUserModelCompleted(
                                context, _mUtil.profileUserModel, true)) {
                              //if proifle is completed show loading dialog
                              _mUtil.loadingDialog(context, true);
                              // if it is a new user
                              if (_newUser) {
                                // post user profile
                                var res = await _userProfileBloc
                                    .postUserProfile(_mUtil.profileUserModel!);

                                // post user image
                                var resImg =
                                    await _userProfileBloc.postUserProfileImage(
                                        _fbId!, _mUtil.profileImageModel!);

                                if (res == null || resImg == null) {
                                  throw Exception('unable to post');
                                } else {
                                  setState(() {
                                    _newUser = false;
                                  });
                                }
                              }
                              // if it is an old user
                              else if (!_newUser) {
                                // patch user profile
                                var res =
                                    await _userProfileBloc.patchUserProfile(
                                        _fbId!, _mUtil.profileUserModel!);

                                // post user image
                                var resImg =
                                    await _userProfileBloc.postUserProfileImage(
                                        _fbId!, _mUtil.profileImageModel!);

                                if (res == null || resImg == null) {
                                  throw Exception('unable to patch');
                                }
                              }

                              // remove loading dialog
                              _mUtil.loadingDialog(context, false);
                              // Go to Questions Page
                              AutoRouter.of(context).push(const SurveyRoute());
                            }
                          } catch (e) {
                            // remove loading dialog
                            _mUtil.loadingDialog(context, false);

                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              behavior: SnackBarBehavior.floating,
                              content: Text(
                                  'Unable to save, check internet connection'),
                              backgroundColor: Colors.red,
                            ));
                            print(e);
                          }
                        }
                      },
                    ),
                  ),
                  Tooltip(
                    waitDuration: const Duration(seconds: 1),
                    message: "Edit profile picture",
                    child: GestureDetector(
                      onTap: () {
                        _showPicker(context);
                      },
                      child: ProfilePicCircle(
                        img: (_mUtil.profileImageModel?.base64ImageString != null)
                            ? Image.memory(
                                base64Decode(_mUtil
                                    .profileImageModel!.base64ImageString!),
                                fit: BoxFit.cover,
                              )
                            : _img,
                      ),
                    ),
                  ),
                  const DemographicsForm(),
                ]),
              ),
            );
          }),
        ),
      ),
    );
  }

  // Camera Methods

  _imgFromCamera() async {
    XFile? image = (await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 50));

    setState(() {
      if (kIsWeb) {
        _img = Image.network(
          image!.path,
          fit: BoxFit.cover,
        );
      } else {
        _img = Image.file(
          File(image!.path),
          fit: BoxFit.cover,
        );
      }

      _imageToDecode = InputImage.fromFilePath(image.path);
      _isFaceDetected(_imageToDecode!);
    });
  }

  _imgFromGallery() async {
    XFile? image = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      if (kIsWeb) {
        _img = Image.network(
          image!.path,
          fit: BoxFit.cover,
        );
      } else {
        _img = Image.file(
          File(image!.path),
          fit: BoxFit.cover,
        );
      }

      _imageToDecode = InputImage.fromFilePath(image.path);
      _isFaceDetected(_imageToDecode!);
    });
  }

  Future<dynamic> _detectNSFWImage(String photo) async {
    final nsfwStatus = await _nsfwDetector.detectInPhoto(photo);
    if (nsfwStatus > 0.80) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text('Image must not be NSFW\nNSFW: ' +
            (nsfwStatus * 100).toString() +
            "%"),
        backgroundColor: Colors.red,
      ));
      setState(() {
        _img = null;
      });
      return true;
    } else {
      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //   behavior: SnackBarBehavior.floating,
      //   content: Text('NSFW: ' + (nsfwStatus * 100).toString() + "%"),
      //   backgroundColor: Colors.green,
      // ));
      return false;
    }
  }

  Future<void> _isFaceDetected(InputImage inputImage) async {
    var res = await _detectNSFWImage(_imageToDecode!.filePath!);
    if (_imageToDecode != null) {
      if (!res) {
        await _faceDetector
            .processImage(inputImage)
            .then((List<Face>? value) async {
          if (value != null) {
            try {
              switch (value.length) {
                case 0:
                  {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      behavior: SnackBarBehavior.floating,
                      content: Text(
                          'No Face Found, Please make sure your face is complete and clear in image'),
                      backgroundColor: Colors.red,
                    ));
                    setState(() {
                      _img = null;
                    });
                    break;
                  }
                case 1:
                  {
                    final imageBytes =
                        await File(_imageToDecode!.filePath!).readAsBytes();
                    _mUtil.profileImageModel = ProfileImageModel(
                        fileName: _fbId! + "_profile.jpeg",
                        contentType: "image/json",
                        description: "Profile Picture",
                        base64ImageString: base64Encode(imageBytes));

                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      behavior: SnackBarBehavior.floating,
                      content: Text('Profile picture updated successfully'),
                      backgroundColor: Colors.green,
                    ));
                    break;
                  }
                default:
                  {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      behavior: SnackBarBehavior.floating,
                      content: Text(
                          'Many Faces Found, Please make sure it is only you in image'),
                      backgroundColor: Colors.red,
                    ));
                    setState(() {
                      _img = null;
                    });
                    break;
                  }
              }
            } catch (e) {
              print(e);
              setState(() {
                _img = null;
              });
            }
          } else {
            print('Faces are null');
            setState(() {
              _img = null;
            });
          }
        });
      }
    }
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Wrap(
              children: <Widget>[
                Tooltip(
                  waitDuration: const Duration(seconds: 1),
                  message: "Pick and upload an image file as profile picture",
                  child: ListTile(
                      leading: const Icon(Icons.photo_library),
                      title: const Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                ),
                Tooltip(
                  waitDuration: const Duration(seconds: 1),
                  message:
                      "Open camera to click an image and save as profile picture",
                  child: ListTile(
                    leading: const Icon(Icons.photo_camera),
                    title: const Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          );
        });
  }
}
