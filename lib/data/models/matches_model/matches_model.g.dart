// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matches_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MatchesModel _$$_MatchesModelFromJson(Map<String, dynamic> json) =>
    _$_MatchesModel(
      userId1: json['UserId1'] as int?,
      user1: json['User1'] == null
          ? null
          : User1.fromJson(json['User1'] as Map<String, dynamic>),
      userId2: json['UserId2'] as int?,
      user2: json['User2'] == null
          ? null
          : User1.fromJson(json['User2'] as Map<String, dynamic>),
      matchedOnDate: json['MatchedOnDate'] == null
          ? null
          : DateTime.parse(json['MatchedOnDate'] as String),
      user1AcceptedDate: json['User1AcceptedDate'],
      user2AcceptedDate: json['User2AcceptedDate'],
      matchedLatitude: (json['MatchedLatitude'] as num?)?.toDouble(),
      matchedLongitude: (json['MatchedLongitude'] as num?)?.toDouble(),
      rawMatchPercentage: (json['RawMatchPercentage'] as num?)?.toDouble(),
      weightedMatchPercentage:
          (json['WeightedMatchPercentage'] as num?)?.toDouble(),
      matchedLocationName: json['MatchedLocationName'],
      id: json['Id'] as int?,
    );

Map<String, dynamic> _$$_MatchesModelToJson(_$_MatchesModel instance) =>
    <String, dynamic>{
      'UserId1': instance.userId1,
      'User1': instance.user1,
      'UserId2': instance.userId2,
      'User2': instance.user2,
      'MatchedOnDate': instance.matchedOnDate?.toIso8601String(),
      'User1AcceptedDate': instance.user1AcceptedDate,
      'User2AcceptedDate': instance.user2AcceptedDate,
      'MatchedLatitude': instance.matchedLatitude,
      'MatchedLongitude': instance.matchedLongitude,
      'RawMatchPercentage': instance.rawMatchPercentage,
      'WeightedMatchPercentage': instance.weightedMatchPercentage,
      'MatchedLocationName': instance.matchedLocationName,
      'Id': instance.id,
    };
