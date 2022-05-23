import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_failure.freezed.dart';

@freezed
class LoginFailure with _$LoginFailure {
  const LoginFailure._();
  const factory LoginFailure.unexpectedError() = _UnexpectedError;
  const factory LoginFailure.noInternetConnection() = _NoInternetConnection;
  const factory LoginFailure.cancelledByUser() = _CancelledByUser;
  const factory LoginFailure.userDisabled() = _UserDisabled;
  const factory LoginFailure.invalidEmainAndPasswordCombination() = _InvalidEmainAndPasswordCombination;
}
