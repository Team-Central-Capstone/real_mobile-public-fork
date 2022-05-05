// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Answer _$$_AnswerFromJson(Map<String, dynamic> json) => _$_Answer(
      surveyQuestionId: json['SurveyQuestionId'] as int?,
      answerText: json['AnswerText'] as String?,
      userSurveyResponses: json['UserSurveyResponses'] as List<dynamic>?,
      deleted: json['Deleted'] as bool?,
      id: json['Id'] as int?,
    );

Map<String, dynamic> _$$_AnswerToJson(_$_Answer instance) => <String, dynamic>{
      'SurveyQuestionId': instance.surveyQuestionId,
      'AnswerText': instance.answerText,
      'UserSurveyResponses': instance.userSurveyResponses,
      'Deleted': instance.deleted,
      'Id': instance.id,
    };
