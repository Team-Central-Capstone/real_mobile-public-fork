// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileUserModel _$$_ProfileUserModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileUserModel(
      firebaseUserId: json['FirebaseUserId'] as String?,
      email: json['Email'] as String?,
      firstName: json['FirstName'] as String?,
      preferredName: json['PreferredName'] as String?,
      lastName: json['LastName'] as String?,
      birthdate: json['Birthdate'] as String?,
      userGender: json['UserGender'] == null
          ? null
          : UserGenderModel.fromJson(
              json['UserGender'] as Map<String, dynamic>),
      userGenderId: json['UserGenderId'] as int?,
      userBodyTypeId: json['UserBodyTypeId'] as int?,
      userBodyType: json['UserBodyType'] == null
          ? null
          : UserBodyTypeModel.fromJson(
              json['UserBodyType'] as Map<String, dynamic>),
      userAttractedGenderIds: (json['UserAttractedGenderIds'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      gendersAttractedTo: (json['GendersAttractedTo'] as List<dynamic>?)
          ?.map((e) => UserGenderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      heightInches: json['HeightInches'] as int?,
      profileIntro: json['ProfileIntro'] as String?,
    );

Map<String, dynamic> _$$_ProfileUserModelToJson(_$_ProfileUserModel instance) =>
    <String, dynamic>{
      'FirebaseUserId': instance.firebaseUserId,
      'Email': instance.email,
      'FirstName': instance.firstName,
      'PreferredName': instance.preferredName,
      'LastName': instance.lastName,
      'Birthdate': instance.birthdate,
      'UserGender': instance.userGender,
      'UserGenderId': instance.userGenderId,
      'UserBodyTypeId': instance.userBodyTypeId,
      'UserBodyType': instance.userBodyType,
      'UserAttractedGenderIds': instance.userAttractedGenderIds,
      'GendersAttractedTo': instance.gendersAttractedTo,
      'HeightInches': instance.heightInches,
      'ProfileIntro': instance.profileIntro,
    };
