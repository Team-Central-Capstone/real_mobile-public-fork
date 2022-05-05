import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    @JsonKey(name: 'FirebaseUserId') String? firebaseUserId,
    @JsonKey(name: 'Email') String? email,
    @JsonKey(name: 'Active') bool? active,
    @JsonKey(name: 'RegisteredTimestamp') String? registeredTimestamp,
    @JsonKey(name: 'LastLoginTimestamp') String? lastLoginTimestamp,
    @JsonKey(name: 'ProfileLastUpdatedTimestamp')
        String? profileLastUpdatedTimestamp,
    @JsonKey(name: 'FirstName') String? firstName,
    @JsonKey(name: 'PreferredName') String? preferredName,
    @JsonKey(name: 'LastName') String? lastName,
    @JsonKey(name: 'DisplayName') String? displayName,
    @JsonKey(name: 'Birthdate') DateTime? birthdate,
    @JsonKey(name: 'Zodiac') String? zodiac,
    @JsonKey(name: 'UserGenderId') int? userGenderId,
    @JsonKey(name: 'UserGender') dynamic userGender,
    @JsonKey(name: 'UserBodyTypeId') int? userBodyTypeId,
    @JsonKey(name: 'UserBodyType') dynamic userBodyType,
    @JsonKey(name: 'HeightInches') int? heightInches,
    @JsonKey(name: 'ProfileIntro') dynamic profileIntro,
    @JsonKey(name: 'GendersAttractedTo') List<dynamic>? gendersAttractedTo,
    @JsonKey(name: 'CurrentLocation') dynamic currentLocation,
    @JsonKey(name: 'Locations') dynamic locations,
    @JsonKey(name: 'UserSurveyResponses') List<dynamic>? userSurveyResponses,
    @JsonKey(name: 'UserImages') List<dynamic>? userImages,
    @JsonKey(name: 'Id') int? id,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
