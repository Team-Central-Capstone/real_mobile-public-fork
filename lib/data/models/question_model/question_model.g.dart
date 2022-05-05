// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionModel _$$_QuestionModelFromJson(Map<String, dynamic> json) =>
    _$_QuestionModel(
      order: json['Order'] as int?,
      questionType: json['QuestionType'] as int?,
      questionTypeString: json['QuestionTypeString'] as String?,
      questionText: json['QuestionText'] as String?,
      answers: (json['Answers'] as List<dynamic>?)
          ?.map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['Id'] as int?,
    );

Map<String, dynamic> _$$_QuestionModelToJson(_$_QuestionModel instance) =>
    <String, dynamic>{
      'Order': instance.order,
      'QuestionType': instance.questionType,
      'QuestionTypeString': instance.questionTypeString,
      'QuestionText': instance.questionText,
      'Answers': instance.answers,
      'Id': instance.id,
    };
