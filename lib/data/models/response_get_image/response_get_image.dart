import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'response_get_image.freezed.dart';
part 'response_get_image.g.dart';

@freezed
class ResponseGetImage with _$ResponseGetImage {
  factory ResponseGetImage({
    @JsonKey(name: 'UserId') int? userId,
    @JsonKey(name: 'User') User? user,
    @JsonKey(name: 'IsProfilePhoto') bool? isProfilePhoto,
    @JsonKey(name: 'FileName') String? fileName,
    @JsonKey(name: 'ContentType') String? contentType,
    @JsonKey(name: 'Description') dynamic description,
    @JsonKey(name: 'UploadDate') String? uploadDate,
    @JsonKey(name: 'Image') String? image,
    @JsonKey(name: 'Id') int? id,
  }) = _ResponseGetImage;

  factory ResponseGetImage.fromJson(Map<String, dynamic> json) =>
      _$ResponseGetImageFromJson(json);
}
