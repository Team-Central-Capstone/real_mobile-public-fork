import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:real/data/models/user_body_type_model/user_body_type_model.dart';
import 'package:real/data/models/user_gender_model/user_gender_model.dart';

part 'profile_user_model.freezed.dart';
part 'profile_user_model.g.dart';

@freezed
class ProfileUserModel with _$ProfileUserModel {
  factory ProfileUserModel({
    @JsonKey(name: 'FirebaseUserId') String? firebaseUserId,
    @JsonKey(name: 'Email') String? email,
    @JsonKey(name: 'FirstName') String? firstName,
    @JsonKey(name: 'PreferredName') String? preferredName,
    @JsonKey(name: 'LastName') String? lastName,
    @JsonKey(name: 'Birthdate') String? birthdate,
    @JsonKey(name: 'UserGender') UserGenderModel? userGender,
    @JsonKey(name: 'UserGenderId') int? userGenderId,
    @JsonKey(name: 'UserBodyTypeId') int? userBodyTypeId,
    @JsonKey(name: 'UserBodyType') UserBodyTypeModel? userBodyType,
    @JsonKey(name: 'UserAttractedGenderIds') List<int>? userAttractedGenderIds,
    @JsonKey(name: 'GendersAttractedTo') List<UserGenderModel>? gendersAttractedTo,
    @JsonKey(name: 'HeightInches') int? heightInches,
    @JsonKey(name: 'ProfileIntro') String? profileIntro,
  }) = _ProfileUserModel;

  factory ProfileUserModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileUserModelFromJson(json);
}
