import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:solfeo/features/google_singin/domain/failures/login_failure.dart';

class LoginRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  LoginRepository(this._firebaseAuth, this._googleSignIn);

  Stream<User?> loginStateChanges() => _firebaseAuth.authStateChanges();

  Future<Either<LoginFailure, Unit>> loginWithGoogle() async {
    try {
      final singInAccount = await _googleSignIn.signIn();
      if (singInAccount != null) {
        final authentication = await singInAccount.authentication;
        final credential = GoogleAuthProvider.credential(
          accessToken: authentication.accessToken,
          idToken: authentication.idToken,
        );
        await _firebaseAuth.signInWithCredential(credential);
        return right(unit);
      } else {
        return left(const LoginFailure.cancelledByUser());
      }
    } on FirebaseAuthException catch (e) {
      final error = e.code;
      if (error == "network-request-failed") {
        return left(const LoginFailure.noInternetConnection());
      } else if (error == "user-disabled") {
        return left(const LoginFailure.userDisabled());
      } else {
        return left(const LoginFailure.unexpectedError());
      }
    } on PlatformException {
      return left(const LoginFailure.unexpectedError());
    }
  }

  Future<void> logout() async {
    await _firebaseAuth.signOut();
    await _googleSignIn.signOut();
  }
}
