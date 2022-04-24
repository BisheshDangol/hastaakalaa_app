part of 'register_form_bloc.dart';

@freezed
class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    required bool isLoading,
    required Either<InvalidInputFailure, String> email,
    required Either<InvalidInputFailure, String> password,
    required Either<InvalidInputFailure, String> userName,
    required Either<InvalidInputFailure, String> firstName,
    required Either<InvalidInputFailure, String> lastName,
    required Either<InvalidInputFailure, String> address,
    required Either<InvalidInputFailure, String> userType,
    required Either<InvalidInputFailure, String> phoneNumber,
    required bool showErrors,
    Either<Failure, int>? failureOrSuccess,
  }) = _RegisterFormState;
  factory RegisterFormState.initial() => RegisterFormState(
        isLoading: false,
        showErrors: false,
        firstName: left(InvalidInputFailure()),
        lastName: left(InvalidInputFailure()),
        address: left(InvalidInputFailure()),
        phoneNumber: left(InvalidInputFailure()),
        email: left(InvalidInputFailure()),
        password: left(InvalidInputFailure()),
        userName: left(InvalidInputFailure()),
        userType: left(InvalidInputFailure()),
      );
}
