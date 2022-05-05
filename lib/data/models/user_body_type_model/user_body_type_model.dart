import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_body_type_model.freezed.dart';
part 'user_body_type_model.g.dart';

@freezed
class UserBodyTypeModel with _$UserBodyTypeModel {
  factory UserBodyTypeModel({
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'Id') int? id,
  }) = _UserBodyTypeModel;

  factory UserBodyTypeModel.fromJson(Map<String, dynamic> json) =>
      _$UserBodyTypeModelFromJson(json);
}
