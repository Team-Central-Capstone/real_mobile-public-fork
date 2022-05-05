import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  //The server might be down.
  const factory AuthFailure.serverError() = _ServerError;
  //The user may enter an invalid phone number.
  const factory AuthFailure.invalidPhoneNumber() = _InvalidPhoneNumber;
  //The user abuses the authentication service with too many requests.
  const factory AuthFailure.tooManyRequests() = _TooManyRequests;
  //The user device does not support phone number sign-in(emulators).
  const factory AuthFailure.deviceNotSupported() = _DeviceNotSupported;
  //The timeout to enter the SMS code may be expired.
  const factory AuthFailure.smsTimeout() = _SmsTimeout;
  //The user session may expire.
  const factory AuthFailure.sessionExpired() = _SessionExpired;
  //The verification code the user entered may be incorrect.
  const factory AuthFailure.invalidVerificationCode() =
      _InvalidVerificationCode;
}
