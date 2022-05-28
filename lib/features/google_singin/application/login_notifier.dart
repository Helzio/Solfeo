import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solfeo/features/google_singin/domain/failures/login_failure.dart';
import 'package:solfeo/features/google_singin/infrastructure/repository/login_repository.dart';
part 'login_notifier.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.logged(User user) = _Logged;
  const factory LoginState.notLogged() = _NotLogged;
  const factory LoginState.failure(LoginFailure failure) = _Failure;
}

class LoginNotifier extends StateNotifier<LoginState> {
  final LoginRepository _repository;
  late StreamSubscription<User?> _loginStateChangesSubscription;
  LoginNotifier(this._repository) : super(const LoginState.initial()) {
    _loginStateChangesSubscription =
        _repository.loginStateChanges().listen((user) {
      if (user != null) {
        state = LoginState.logged(user);
      } else {
        state = const LoginState.notLogged();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _loginStateChangesSubscription.cancel();
  }

  Future<void> loginWithGoogle() async {
    state = const LoginState.loading();
    final response = await _repository.loginWithGoogle();
    response.fold(
      (l) => state = LoginState.failure(l),
      (r) => null,
    );
  }

  Future<void> singOut() async {
    if (state == const LoginState.notLogged()) {
      state = const LoginState.loading();
      state = const LoginState.notLogged();
    } else {
      await _repository.logout();
    }
  }
}
