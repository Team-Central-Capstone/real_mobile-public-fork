// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurveyResponse _$$_SurveyResponseFromJson(Map<String, dynamic> json) =>
    _$_SurveyResponse(
      surveyAnswerResponse: json['SurveyAnswerResponse'] as String?,
      answerIds:
          (json['AnswerIds'] as List<dynamic>?)?.map((e) => e as int).toList(),
      userSurveyResponseWeight: json['UserSurveyResponseWeight'] as int?,
    );

Map<String, dynamic> _$$_SurveyResponseToJson(_$_SurveyResponse instance) =>
    <String, dynamic>{
      'SurveyAnswerResponse': instance.surveyAnswerResponse,
      'AnswerIds': instance.answerIds,
      'UserSurveyResponseWeight': instance.userSurveyResponseWeight,
    };
