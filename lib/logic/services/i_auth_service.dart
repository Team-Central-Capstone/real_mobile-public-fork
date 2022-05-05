import 'package:dartz/dartz.dart';
import 'package:real/data/models/auth_failure.dart';
import 'package:real/data/models/auth_user_model.dart';

abstract class IAuthService {
  //Notifies when the authentication status changes.
  Stream<AuthUserModel> get authStateChanges;
  //Logs out from the service.
  Future<void> signOut();
  //Sends phone number to the backend, emit error messages, if any.
  Stream<Either<AuthFailure, String>> signInWithPhoneNumber({
    required String phoneNumber,
    required Duration timeout,
  });
  //Sends SMS code to the backend for verification, emit error messages, if any.
  Future<Either<AuthFailure, Unit>> verifySmsCode({
    required String smsCode,
    required String verificationId,
  });
}
