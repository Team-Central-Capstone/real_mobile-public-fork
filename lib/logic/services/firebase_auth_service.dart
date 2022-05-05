import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:real/data/models/auth_user_model.dart';
import 'package:real/data/models/auth_failure.dart';

import 'i_auth_service.dart';

@LazySingleton(as: IAuthService)
class FirebaseAuthService implements IAuthService {
  final FirebaseAuth _firebaseAuth;
  FirebaseAuthService(this._firebaseAuth);
  late ConfirmationResult confirmationResult;

  @override
  Stream<AuthUserModel> get authStateChanges {
    return _firebaseAuth.authStateChanges().map(
      (User? user) {
        if (user == null) {
          // The user is signed out
          return AuthUserModel.empty();
        } else {
          // The user is logged in
          return AuthUserModel(
              id: user.uid, phoneNumber: user.phoneNumber ?? '000-000-0000');
        }
      },
    );
  }

  @override
  Stream<Either<AuthFailure, String>> signInWithPhoneNumber({
    required String phoneNumber,
    required Duration timeout,
  }) async* {
    final StreamController<Either<AuthFailure, String>> streamController =
        StreamController<Either<AuthFailure, String>>();

    if (kIsWeb) {
      // running on the web!
      confirmationResult = await _firebaseAuth.signInWithPhoneNumber(
          phoneNumber,
          RecaptchaVerifier(
            onSuccess: () {
              print('reCAPTCHA Completed!');
              // Update the UI - wait for the user to enter the SMS code
              streamController.add(right("verified"));
            },
            onError: (FirebaseAuthException error) => print(error),
            onExpired: () => print('reCAPTCHA Expired!'),
          ));

      yield* streamController.stream;
    } else {
      // NOT running on the web!
      await _firebaseAuth.verifyPhoneNumber(
          timeout: timeout,
          phoneNumber: phoneNumber,
          verificationCompleted: (PhoneAuthCredential credential) async {
            // ANDROID ONLY!
            // TODO: write verification completed for Android
          },
          codeSent: (String verificationId, int? resendToken) async {
            // Update the UI - wait for the user to enter the SMS code
            streamController.add(right(verificationId));
          },
          codeAutoRetrievalTimeout: (String verificationId) {
            // Auto-resolution timed out...
            streamController.add(left(const AuthFailure.smsTimeout()));
          },
          verificationFailed: (FirebaseAuthException e) {
            late final Either<AuthFailure, String> result;
            if (e.code == 'invalid-phone-number') {
              result = left(const AuthFailure.invalidPhoneNumber());
            } else if (e.code == 'too-many-requests') {
              result = left(const AuthFailure.tooManyRequests());
            } else if (e.code == 'app-not-authorized') {
              result = left(const AuthFailure.deviceNotSupported());
            } else {
              result = left(const AuthFailure.serverError());
            }
            streamController.add(result);
          });
      yield* streamController.stream;
    }
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<Either<AuthFailure, Unit>> verifySmsCode({
    required String smsCode,
    required String verificationId,
  }) async {
    if (kIsWeb) {
      try {
        await confirmationResult.confirm(smsCode);
        return right(unit);
      } on FirebaseAuthException catch (e) {
        if (e.code == "session-expired") {
          return left(const AuthFailure.sessionExpired());
        } else if (e.code == "ınvalıd-verıfıcatıon-code" ||
            e.code == "invalid-verification-code") {
          return left(const AuthFailure.invalidVerificationCode());
        }
        return left(const AuthFailure.serverError());
      }
    } else {
      try {
        final PhoneAuthCredential phoneAuthCredential =
            PhoneAuthProvider.credential(
                smsCode: smsCode, verificationId: verificationId);

        await _firebaseAuth.signInWithCredential(phoneAuthCredential);
        return right(unit);
      } on FirebaseAuthException catch (e) {
        if (e.code == "session-expired") {
          return left(const AuthFailure.sessionExpired());
        } else if (e.code == "ınvalıd-verıfıcatıon-code" ||
            e.code == "invalid-verification-code") {
          return left(const AuthFailure.invalidVerificationCode());
        }
        return left(const AuthFailure.serverError());
      }
    }
  }
}
