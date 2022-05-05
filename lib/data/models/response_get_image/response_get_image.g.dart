// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_get_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseGetImage _$$_ResponseGetImageFromJson(Map<String, dynamic> json) =>
    _$_ResponseGetImage(
      userId: json['UserId'] as int?,
      user: json['User'] == null
          ? null
          : User.fromJson(json['User'] as Map<String, dynamic>),
      isProfilePhoto: json['IsProfilePhoto'] as bool?,
      fileName: json['FileName'] as String?,
      contentType: json['ContentType'] as String?,
      description: json['Description'],
      uploadDate: json['UploadDate'] as String?,
      image: json['Image'] as String?,
      id: json['Id'] as int?,
    );

Map<String, dynamic> _$$_ResponseGetImageToJson(_$_ResponseGetImage instance) =>
    <String, dynamic>{
      'UserId': instance.userId,
      'User': instance.user,
      'IsProfilePhoto': instance.isProfilePhoto,
      'FileName': instance.fileName,
      'ContentType': instance.contentType,
      'Description': instance.description,
      'UploadDate': instance.uploadDate,
      'Image': instance.image,
      'Id': instance.id,
    };
