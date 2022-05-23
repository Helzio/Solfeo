import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/google_singin/application/login_notifier.dart';
import 'package:solfeo/features/google_singin/infrastructure/repository/login_repository.dart';

final loginRepositoryProvider = Provider<LoginRepository>((ref) {
  return LoginRepository(_firebaseAuth, _googleSignIn);
});

final loginProvider = StateNotifierProvider<LoginNotifier, LoginState>((ref) {
  return LoginNotifier(ref.watch(loginRepositoryProvider));
});
