import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:lottie/lottie.dart';
import 'package:real/data/models/profile_image_model/profile_image_model.dart';
import 'package:real/data/models/profile_user_model/profile_user_model.dart';
import 'package:real/data/models/user_body_type_model/user_body_type_model.dart';
import 'package:real/data/models/user_gender_model/user_gender_model.dart';

@lazySingleton
class Util {
  ProfileUserModel? profileUserModel;
  ProfileImageModel? profileImageModel;

  List<Step> _surveySteps = [];

  List<Step> get getSurveySteps => _surveySteps;

  void setSurveySteps(List<Step> newSurveySteps) {
    _surveySteps = newSurveySteps;
  }

  String? validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Please enter a valid email address';
    } else {
      return null;
    }
  }

  String? validateName(String? value) {
    String pattern = r"^[\w'\-,.][^0-9_!¡?÷?¿/\\+=@#$%ˆ&*(){}|~<>;:[\]]{2,}$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Please enter a valid name';
    } else {
      return null;
    }
  }

  bool isUserModelCompleted(
      var context, ProfileUserModel? userModel, bool showSnack) {
    if (userModel != null) {
      if (userModel.firstName == "" || userModel.firstName == null) {
        if (showSnack) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            behavior: SnackBarBehavior.floating,
            content: Text('Please fill a first name'),
            backgroundColor: Colors.red,
          ));
        }
        return false;
      }
      if (userModel.lastName == "" || userModel.lastName == null) {
        if (showSnack) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            behavior: SnackBarBehavior.floating,
            content: Text('Please fill a last name'),
            backgroundColor: Colors.red,
          ));
        }
        return false;
      }
      if (userModel.email == null || userModel.email == '') {
        if (showSnack) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            behavior: SnackBarBehavior.floating,
            content: Text('Please provide a valid email address'),
            backgroundColor: Colors.red,
          ));
        }
        return false;
      }
      if (userModel.birthdate == "" || userModel.birthdate == null) {
        if (showSnack) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            behavior: SnackBarBehavior.floating,
            content: Text('Please select a birth date'),
            backgroundColor: Colors.red,
          ));
        }
        return false;
      }
      if (userModel.userGenderId == null || userModel.userGenderId == 0) {
        if (showSnack) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            behavior: SnackBarBehavior.floating,
            content: Text('Please select a gender id'),
            backgroundColor: Colors.red,
          ));
        }
        return false;
      }
      if (userModel.userBodyTypeId == null || userModel.userBodyTypeId == 0) {
        if (showSnack) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            behavior: SnackBarBehavior.floating,
            content: Text('Please select a body type'),
            backgroundColor: Colors.red,
          ));
        }
        return false;
      }
      if (userModel.userAttractedGenderIds == null ||
          userModel.userAttractedGenderIds!.isEmpty) {
        if (showSnack) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            behavior: SnackBarBehavior.floating,
            content: Text('Please select at least one attraction'),
            backgroundColor: Colors.red,
          ));
        }
        return false;
      }
      if (userModel.heightInches == null || userModel.heightInches! <= 0) {
        if (showSnack) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            behavior: SnackBarBehavior.floating,
            content: Text('Hegiht must be greater than 0'),
            backgroundColor: Colors.red,
          ));
        }
        return false;
      }
      // all cases passed, user completed profile
      return true;
    }
    // if userModel itself is null return false
    return false;
  }

  bool isGenderSelected(int? _chosenGender, int gender) {
    if (_chosenGender == gender) {
      return true;
    }
    return false;
  }

  bool isBodyTypeSelected(int? _chosenBodyType, int bodyTypeModel) {
    if (_chosenBodyType == bodyTypeModel) {
      return true;
    }
    return false;
  }

  Widget getGenderImage(UserGenderModel gender) {
    switch (gender.name!.toUpperCase()) {
      case 'MALE':
        return Image.asset(
          'assets/images/gender_male.png',
          fit: BoxFit.fitHeight,
        );
      case 'FEMALE':
        return Image.asset(
          'assets/images/gender_female.png',
          fit: BoxFit.fitHeight,
        );
      case 'OTHER':
        return Image.asset(
          'assets/images/gender_other.png',
          fit: BoxFit.fitHeight,
        );
      default:
        if (kDebugMode) {
          print('No image found, setting to other');
        }
        return Image.asset(
          'assets/images/gender_other.png',
          fit: BoxFit.fitHeight,
        );
    }
  }

  Widget getBodyTypeImage(
      UserGenderModel? _chosenGender, UserBodyTypeModel bodyTypeModel) {
    switch (bodyTypeModel.name!) {
      case 'Prefer not to say':
        if (_chosenGender?.name?.toUpperCase() == 'MALE') {
          return Image.asset(
            'assets/images/no_biz_man.png',
            fit: BoxFit.contain,
          );
        }
        if (_chosenGender?.name?.toUpperCase() == 'OTHER') {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Image.asset('assets/images/no_biz_other.png', fit: BoxFit.contain,),
              Image.asset(
                'assets/images/no_biz_otherw.png',
                fit: BoxFit.contain,
              ),
            ],
          );
        }
        return Image.asset(
          'assets/images/no_biz_woman.png',
          fit: BoxFit.contain,
        );
      case 'Skinny':
        if (_chosenGender?.name?.toUpperCase() == 'MALE') {
          return Image.asset(
            'assets/images/skinny_man.png',
            fit: BoxFit.contain,
          );
        }
        if (_chosenGender?.name?.toUpperCase() == 'OTHER') {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/skinny_other.png',
                fit: BoxFit.contain,
              ),
              Image.asset(
                'assets/images/skinny_otherw.png',
                fit: BoxFit.contain,
              ),
            ],
          );
        }
        return Image.asset(
          'assets/images/skinny_woman.png',
          fit: BoxFit.contain,
        );
      case 'Average':
        if (_chosenGender?.name?.toUpperCase() == 'MALE') {
          return Image.asset(
            'assets/images/average_man.png',
            fit: BoxFit.contain,
          );
        }
        if (_chosenGender?.name?.toUpperCase() == 'OTHER') {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/average_other.png',
                fit: BoxFit.contain,
              ),
              Image.asset(
                'assets/images/average_otherw.png',
                fit: BoxFit.contain,
              ),
            ],
          );
        }
        return Image.asset(
          'assets/images/average_woman.png',
          fit: BoxFit.contain,
        );

      case 'Muscular':
        if (_chosenGender?.name?.toUpperCase() == 'MALE') {
          return Image.asset(
            'assets/images/athletic_man.png',
            fit: BoxFit.contain,
          );
        }
        if (_chosenGender?.name?.toUpperCase() == 'OTHER') {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/athletic_other.png',
                fit: BoxFit.contain,
              ),
              Image.asset(
                'assets/images/athletic_otherw.png',
                fit: BoxFit.contain,
              ),
            ],
          );
        }
        return Image.asset(
          'assets/images/athletic_woman.png',
          fit: BoxFit.contain,
        );
      case 'More to love':
        if (_chosenGender?.name?.toUpperCase() == 'MALE') {
          return Image.asset(
            'assets/images/moreToLove_man.png',
            fit: BoxFit.contain,
          );
        }
        if (_chosenGender?.name?.toUpperCase() == 'OTHER') {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/moreToLove_other.png',
                fit: BoxFit.contain,
              ),
              Image.asset(
                'assets/images/moreToLove_otherw.png',
                fit: BoxFit.contain,
              ),
            ],
          );
        }
        return Image.asset(
          'assets/images/moreToLove_woman.png',
          fit: BoxFit.contain,
        );
      case 'Dadbod':
        if (_chosenGender?.name?.toUpperCase() == 'MALE') {
          return Image.asset(
            'assets/images/dadbod_man.png',
            fit: BoxFit.contain,
          );
        }
        if (_chosenGender?.name?.toUpperCase() == 'OTHER') {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/dadbod_other.png',
                fit: BoxFit.contain,
              ),
              Image.asset(
                'assets/images/mombod_otherw.png',
                fit: BoxFit.contain,
              ),
            ],
          );
        }
        return Image.asset(
          'assets/images/mombod_woman.png',
          fit: BoxFit.contain,
        );
      default:
        if (kDebugMode) {
          print('No image found, setting to other');
        }
        return Image.asset(
          'assets/images/dadbod_man.png',
          fit: BoxFit.contain,
        );
    }
  }

  /// Method to show/hide undismissible loading dialog
  loadingDialog(var context, bool visible) {
    if (visible) {
      showDialog(
          context: context,
          barrierDismissible: false,
          barrierColor: Colors.deepPurple.withAlpha(20),
          builder: (BuildContext context) {
            //Here we will build the content of the dialog
            return WillPopScope(
              onWillPop: () async => false,
              child: Dialog(
                backgroundColor: Colors.white.withAlpha(120),
                child: Lottie.asset(
                  'assets/lottie/loading.json',
                  repeat: true,
                  reverse: false,
                  animate: true,
                ),
              ),
            );
          });
    }
    if (!visible) {
      Navigator.of(context).pop();
    }
  }
}
