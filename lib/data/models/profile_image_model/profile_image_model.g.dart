// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileImageModel _$$_ProfileImageModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileImageModel(
      fileName: json['FileName'] as String?,
      contentType: json['ContentType'] as String?,
      description: json['Description'] as String?,
      base64ImageString: json['Base64ImageString'] as String?,
      image: json['Image'] as String?,
    );

Map<String, dynamic> _$$_ProfileImageModelToJson(
        _$_ProfileImageModel instance) =>
    <String, dynamic>{
      'FileName': instance.fileName,
      'ContentType': instance.contentType,
      'Description': instance.description,
      'Base64ImageString': instance.base64ImageString,
      'Image': instance.image,
    };
