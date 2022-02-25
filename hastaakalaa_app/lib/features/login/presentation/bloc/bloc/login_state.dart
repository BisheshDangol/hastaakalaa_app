part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isLoading,
    required Either<InvalidInputFailure, String> username,
    required Either<InvalidInputFailure, String> password,
    required bool showErrors,
    Either<Failure, Unit>? failureOrSuccess,
  }) = _LoginState;
  factory LoginState.initial() => LoginState(
      isLoading: false,
      username: left(InvalidInputFailure()),
      password: left(InvalidInputFailure()),
      showErrors: false);
}
