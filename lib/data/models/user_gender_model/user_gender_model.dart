import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_gender_model.freezed.dart';
part 'user_gender_model.g.dart';

@freezed
class UserGenderModel with _$UserGenderModel {
  factory UserGenderModel({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'Id') int? id,
  }) = _UserGenderModel;

  factory UserGenderModel.fromJson(Map<String, dynamic> json) =>
      _$UserGenderModelFromJson(json);
}
