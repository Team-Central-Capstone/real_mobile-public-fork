// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return _QuestionModel.fromJson(json);
}

/// @nodoc
class _$QuestionModelTearOff {
  const _$QuestionModelTearOff();

  _QuestionModel call(
      {@JsonKey(name: 'Order') int? order,
      @JsonKey(name: 'QuestionType') int? questionType,
      @JsonKey(name: 'QuestionTypeString') String? questionTypeString,
      @JsonKey(name: 'QuestionText') String? questionText,
      @JsonKey(name: 'Answers') List<Answer>? answers,
      @JsonKey(name: 'Id') int? id}) {
    return _QuestionModel(
      order: order,
      questionType: questionType,
      questionTypeString: questionTypeString,
      questionText: questionText,
      answers: answers,
      id: id,
    );
  }

  QuestionModel fromJson(Map<String, Object?> json) {
    return QuestionModel.fromJson(json);
  }
}

/// @nodoc
const $QuestionModel = _$QuestionModelTearOff();

/// @nodoc
mixin _$QuestionModel {
  @JsonKey(name: 'Order')
  int? get order => throw _privateConstructorUsedError;
  @JsonKey(name: 'QuestionType')
  int? get questionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'QuestionTypeString')
  String? get questionTypeString => throw _privateConstructorUsedError;
  @JsonKey(name: 'QuestionText')
  String? get questionText => throw _privateConstructorUsedError;
  @JsonKey(name: 'Answers')
  List<Answer>? get answers => throw _privateConstructorUsedError;
  @JsonKey(name: 'Id')
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionModelCopyWith<QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionModelCopyWith<$Res> {
  factory $QuestionModelCopyWith(
          QuestionModel value, $Res Function(QuestionModel) then) =
      _$QuestionModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Order') int? order,
      @JsonKey(name: 'QuestionType') int? questionType,
      @JsonKey(name: 'QuestionTypeString') String? questionTypeString,
      @JsonKey(name: 'QuestionText') String? questionText,
      @JsonKey(name: 'Answers') List<Answer>? answers,
      @JsonKey(name: 'Id') int? id});
}

/// @nodoc
class _$QuestionModelCopyWithImpl<$Res>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._value, this._then);

  final QuestionModel _value;
  // ignore: unused_field
  final $Res Function(QuestionModel) _then;

  @override
  $Res call({
    Object? order = freezed,
    Object? questionType = freezed,
    Object? questionTypeString = freezed,
    Object? questionText = freezed,
    Object? answers = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      questionType: questionType == freezed
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as int?,
      questionTypeString: questionTypeString == freezed
          ? _value.questionTypeString
          : questionTypeString // ignore: cast_nullable_to_non_nullable
              as String?,
      questionText: questionText == freezed
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$QuestionModelCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$QuestionModelCopyWith(
          _QuestionModel value, $Res Function(_QuestionModel) then) =
      __$QuestionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Order') int? order,
      @JsonKey(name: 'QuestionType') int? questionType,
      @JsonKey(name: 'QuestionTypeString') String? questionTypeString,
      @JsonKey(name: 'QuestionText') String? questionText,
      @JsonKey(name: 'Answers') List<Answer>? answers,
      @JsonKey(name: 'Id') int? id});
}

/// @nodoc
class __$QuestionModelCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res>
    implements _$QuestionModelCopyWith<$Res> {
  __$QuestionModelCopyWithImpl(
      _QuestionModel _value, $Res Function(_QuestionModel) _then)
      : super(_value, (v) => _then(v as _QuestionModel));

  @override
  _QuestionModel get _value => super._value as _QuestionModel;

  @override
  $Res call({
    Object? order = freezed,
    Object? questionType = freezed,
    Object? questionTypeString = freezed,
    Object? questionText = freezed,
    Object? answers = freezed,
    Object? id = freezed,
  }) {
    return _then(_QuestionModel(
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      questionType: questionType == freezed
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as int?,
      questionTypeString: questionTypeString == freezed
          ? _value.questionTypeString
          : questionTypeString // ignore: cast_nullable_to_non_nullable
              as String?,
      questionText: questionText == freezed
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionModel implements _QuestionModel {
  _$_QuestionModel(
      {@JsonKey(name: 'Order') this.order,
      @JsonKey(name: 'QuestionType') this.questionType,
      @JsonKey(name: 'QuestionTypeString') this.questionTypeString,
      @JsonKey(name: 'QuestionText') this.questionText,
      @JsonKey(name: 'Answers') this.answers,
      @JsonKey(name: 'Id') this.id});

  factory _$_QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionModelFromJson(json);

  @override
  @JsonKey(name: 'Order')
  final int? order;
  @override
  @JsonKey(name: 'QuestionType')
  final int? questionType;
  @override
  @JsonKey(name: 'QuestionTypeString')
  final String? questionTypeString;
  @override
  @JsonKey(name: 'QuestionText')
  final String? questionText;
  @override
  @JsonKey(name: 'Answers')
  final List<Answer>? answers;
  @override
  @JsonKey(name: 'Id')
  final int? id;

  @override
  String toString() {
    return 'QuestionModel(order: $order, questionType: $questionType, questionTypeString: $questionTypeString, questionText: $questionText, answers: $answers, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuestionModel &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality()
                .equals(other.questionType, questionType) &&
            const DeepCollectionEquality()
                .equals(other.questionTypeString, questionTypeString) &&
            const DeepCollectionEquality()
                .equals(other.questionText, questionText) &&
            const DeepCollectionEquality().equals(other.answers, answers) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(questionType),
      const DeepCollectionEquality().hash(questionTypeString),
      const DeepCollectionEquality().hash(questionText),
      const DeepCollectionEquality().hash(answers),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$QuestionModelCopyWith<_QuestionModel> get copyWith =>
      __$QuestionModelCopyWithImpl<_QuestionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionModelToJson(this);
  }
}

abstract class _QuestionModel implements QuestionModel {
  factory _QuestionModel(
      {@JsonKey(name: 'Order') int? order,
      @JsonKey(name: 'QuestionType') int? questionType,
      @JsonKey(name: 'QuestionTypeString') String? questionTypeString,
      @JsonKey(name: 'QuestionText') String? questionText,
      @JsonKey(name: 'Answers') List<Answer>? answers,
      @JsonKey(name: 'Id') int? id}) = _$_QuestionModel;

  factory _QuestionModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionModel.fromJson;

  @override
  @JsonKey(name: 'Order')
  int? get order;
  @override
  @JsonKey(name: 'QuestionType')
  int? get questionType;
  @override
  @JsonKey(name: 'QuestionTypeString')
  String? get questionTypeString;
  @override
  @JsonKey(name: 'QuestionText')
  String? get questionText;
  @override
  @JsonKey(name: 'Answers')
  List<Answer>? get answers;
  @override
  @JsonKey(name: 'Id')
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$QuestionModelCopyWith<_QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
