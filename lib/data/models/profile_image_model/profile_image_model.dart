import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_image_model.freezed.dart';
part 'profile_image_model.g.dart';

@freezed
class ProfileImageModel with _$ProfileImageModel {
  factory ProfileImageModel({
    @JsonKey(name: 'FileName') String? fileName,
    @JsonKey(name: 'ContentType') String? contentType,
    @JsonKey(name: 'Description') String? description,
    @JsonKey(name: 'Base64ImageString') String? base64ImageString,
    @JsonKey(name: 'Image') String? image,
  }) = _ProfileImageModel;

  factory ProfileImageModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileImageModelFromJson(json);
}
