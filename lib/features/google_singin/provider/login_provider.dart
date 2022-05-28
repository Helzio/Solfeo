import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:solfeo/features/google_singin/application/login_notifier.dart';
import 'package:solfeo/features/google_singin/infrastructure/repository/login_repository.dart';

final _firebaseAuth = Provider(
  (ref) => FirebaseAuth.instance,
);
final _googleSignIn = Provider(
  (ref) => GoogleSignIn(),
);

final loginRepositoryProvider = Provider<LoginRepository>((ref) {
  return LoginRepository(ref.watch(_firebaseAuth), ref.watch(_googleSignIn));
});

final loginProvider = StateNotifierProvider<LoginNotifier, LoginState>((ref) {
  return LoginNotifier(ref.watch(loginRepositoryProvider));
});
