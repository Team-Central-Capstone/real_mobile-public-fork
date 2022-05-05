// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User1 _$$_User1FromJson(Map<String, dynamic> json) => _$_User1(
      firebaseUserId: json['FirebaseUserId'] as String?,
      email: json['Email'],
      active: json['Active'] as bool?,
      registeredTimestamp: json['RegisteredTimestamp'] == null
          ? null
          : DateTime.parse(json['RegisteredTimestamp'] as String),
      lastLoginTimestamp: json['LastLoginTimestamp'] == null
          ? null
          : DateTime.parse(json['LastLoginTimestamp'] as String),
      profileLastUpdatedTimestamp: json['ProfileLastUpdatedTimestamp'],
      firstName: json['FirstName'] as String?,
      preferredName: json['PreferredName'] as String?,
      lastName: json['LastName'] as String?,
      displayName: json['DisplayName'] as String?,
      birthdate: json['Birthdate'] == null
          ? null
          : DateTime.parse(json['Birthdate'] as String),
      zodiac: json['Zodiac'] as String?,
      userGenderId: json['UserGenderId'] as int?,
      userGender: json['UserGender'],
      userBodyTypeId: json['UserBodyTypeId'] as int?,
      userBodyType: json['UserBodyType'],
      heightInches: json['HeightInches'] as int?,
      profileIntro: json['ProfileIntro'],
      gendersAttractedTo: json['GendersAttractedTo'] as List<dynamic>?,
      currentLocation: json['CurrentLocation'],
      locations: json['Locations'],
      userSurveyResponses: json['UserSurveyResponses'] as List<dynamic>?,
      userImages: json['UserImages'] as List<dynamic>?,
      id: json['Id'] as int?,
    );

Map<String, dynamic> _$$_User1ToJson(_$_User1 instance) => <String, dynamic>{
      'FirebaseUserId': instance.firebaseUserId,
      'Email': instance.email,
      'Active': instance.active,
      'RegisteredTimestamp': instance.registeredTimestamp?.toIso8601String(),
      'LastLoginTimestamp': instance.lastLoginTimestamp?.toIso8601String(),
      'ProfileLastUpdatedTimestamp': instance.profileLastUpdatedTimestamp,
      'FirstName': instance.firstName,
      'PreferredName': instance.preferredName,
      'LastName': instance.lastName,
      'DisplayName': instance.displayName,
      'Birthdate': instance.birthdate?.toIso8601String(),
      'Zodiac': instance.zodiac,
      'UserGenderId': instance.userGenderId,
      'UserGender': instance.userGender,
      'UserBodyTypeId': instance.userBodyTypeId,
      'UserBodyType': instance.userBodyType,
      'HeightInches': instance.heightInches,
      'ProfileIntro': instance.profileIntro,
      'GendersAttractedTo': instance.gendersAttractedTo,
      'CurrentLocation': instance.currentLocation,
      'Locations': instance.locations,
      'UserSurveyResponses': instance.userSurveyResponses,
      'UserImages': instance.userImages,
      'Id': instance.id,
    };
