// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone_number_sign_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhoneNumberSignInStateTearOff {
  const _$PhoneNumberSignInStateTearOff();

  _PhoneNumberSignInState call(
      {required String phoneNumber,
      required String smsCode,
      required Option<AuthFailure> failureOption,
      required Option<String> verificationIdOption,
      required bool isInProgress}) {
    return _PhoneNumberSignInState(
      phoneNumber: phoneNumber,
      smsCode: smsCode,
      failureOption: failureOption,
      verificationIdOption: verificationIdOption,
      isInProgress: isInProgress,
    );
  }
}

/// @nodoc
const $PhoneNumberSignInState = _$PhoneNumberSignInStateTearOff();

/// @nodoc
mixin _$PhoneNumberSignInState {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get smsCode => throw _privateConstructorUsedError;
  Option<AuthFailure> get failureOption => throw _privateConstructorUsedError;
  Option<String> get verificationIdOption => throw _privateConstructorUsedError;
  bool get isInProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneNumberSignInStateCopyWith<PhoneNumberSignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberSignInStateCopyWith<$Res> {
  factory $PhoneNumberSignInStateCopyWith(PhoneNumberSignInState value,
          $Res Function(PhoneNumberSignInState) then) =
      _$PhoneNumberSignInStateCopyWithImpl<$Res>;
  $Res call(
      {String phoneNumber,
      String smsCode,
      Option<AuthFailure> failureOption,
      Option<String> verificationIdOption,
      bool isInProgress});
}

/// @nodoc
class _$PhoneNumberSignInStateCopyWithImpl<$Res>
    implements $PhoneNumberSignInStateCopyWith<$Res> {
  _$PhoneNumberSignInStateCopyWithImpl(this._value, this._then);

  final PhoneNumberSignInState _value;
  // ignore: unused_field
  final $Res Function(PhoneNumberSignInState) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? smsCode = freezed,
    Object? failureOption = freezed,
    Object? verificationIdOption = freezed,
    Object? isInProgress = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<AuthFailure>,
      verificationIdOption: verificationIdOption == freezed
          ? _value.verificationIdOption
          : verificationIdOption // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      isInProgress: isInProgress == freezed
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PhoneNumberSignInStateCopyWith<$Res>
    implements $PhoneNumberSignInStateCopyWith<$Res> {
  factory _$PhoneNumberSignInStateCopyWith(_PhoneNumberSignInState value,
          $Res Function(_PhoneNumberSignInState) then) =
      __$PhoneNumberSignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String phoneNumber,
      String smsCode,
      Option<AuthFailure> failureOption,
      Option<String> verificationIdOption,
      bool isInProgress});
}

/// @nodoc
class __$PhoneNumberSignInStateCopyWithImpl<$Res>
    extends _$PhoneNumberSignInStateCopyWithImpl<$Res>
    implements _$PhoneNumberSignInStateCopyWith<$Res> {
  __$PhoneNumberSignInStateCopyWithImpl(_PhoneNumberSignInState _value,
      $Res Function(_PhoneNumberSignInState) _then)
      : super(_value, (v) => _then(v as _PhoneNumberSignInState));

  @override
  _PhoneNumberSignInState get _value => super._value as _PhoneNumberSignInState;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? smsCode = freezed,
    Object? failureOption = freezed,
    Object? verificationIdOption = freezed,
    Object? isInProgress = freezed,
  }) {
    return _then(_PhoneNumberSignInState(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<AuthFailure>,
      verificationIdOption: verificationIdOption == freezed
          ? _value.verificationIdOption
          : verificationIdOption // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      isInProgress: isInProgress == freezed
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PhoneNumberSignInState extends _PhoneNumberSignInState {
  const _$_PhoneNumberSignInState(
      {required this.phoneNumber,
      required this.smsCode,
      required this.failureOption,
      required this.verificationIdOption,
      required this.isInProgress})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String smsCode;
  @override
  final Option<AuthFailure> failureOption;
  @override
  final Option<String> verificationIdOption;
  @override
  final bool isInProgress;

  @override
  String toString() {
    return 'PhoneNumberSignInState(phoneNumber: $phoneNumber, smsCode: $smsCode, failureOption: $failureOption, verificationIdOption: $verificationIdOption, isInProgress: $isInProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhoneNumberSignInState &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.smsCode, smsCode) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption) &&
            const DeepCollectionEquality()
                .equals(other.verificationIdOption, verificationIdOption) &&
            const DeepCollectionEquality()
                .equals(other.isInProgress, isInProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(smsCode),
      const DeepCollectionEquality().hash(failureOption),
      const DeepCollectionEquality().hash(verificationIdOption),
      const DeepCollectionEquality().hash(isInProgress));

  @JsonKey(ignore: true)
  @override
  _$PhoneNumberSignInStateCopyWith<_PhoneNumberSignInState> get copyWith =>
      __$PhoneNumberSignInStateCopyWithImpl<_PhoneNumberSignInState>(
          this, _$identity);
}

abstract class _PhoneNumberSignInState extends PhoneNumberSignInState {
  const factory _PhoneNumberSignInState(
      {required String phoneNumber,
      required String smsCode,
      required Option<AuthFailure> failureOption,
      required Option<String> verificationIdOption,
      required bool isInProgress}) = _$_PhoneNumberSignInState;
  const _PhoneNumberSignInState._() : super._();

  @override
  String get phoneNumber;
  @override
  String get smsCode;
  @override
  Option<AuthFailure> get failureOption;
  @override
  Option<String> get verificationIdOption;
  @override
  bool get isInProgress;
  @override
  @JsonKey(ignore: true)
  _$PhoneNumberSignInStateCopyWith<_PhoneNumberSignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
