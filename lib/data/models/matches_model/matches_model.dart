import 'package:freezed_annotation/freezed_annotation.dart';

import 'user1.dart';

part 'matches_model.freezed.dart';
part 'matches_model.g.dart';

@freezed
class MatchesModel with _$MatchesModel {
  factory MatchesModel({
    @JsonKey(name: 'UserId1') int? userId1,
    @JsonKey(name: 'User1') User1? user1,
    @JsonKey(name: 'UserId2') int? userId2,
    @JsonKey(name: 'User2') User1? user2,
    @JsonKey(name: 'MatchedOnDate') DateTime? matchedOnDate,
    @JsonKey(name: 'User1AcceptedDate') dynamic user1AcceptedDate,
    @JsonKey(name: 'User2AcceptedDate') dynamic user2AcceptedDate,
    @JsonKey(name: 'MatchedLatitude') double? matchedLatitude,
    @JsonKey(name: 'MatchedLongitude') double? matchedLongitude,
    @JsonKey(name: 'RawMatchPercentage') double? rawMatchPercentage,
    @JsonKey(name: 'WeightedMatchPercentage') double? weightedMatchPercentage,
    @JsonKey(name: 'MatchedLocationName') dynamic matchedLocationName,
    @JsonKey(name: 'Id') int? id,
  }) = _MatchesModel;

  factory MatchesModel.fromJson(Map<String, dynamic> json) =>
      _$MatchesModelFromJson(json);
}
