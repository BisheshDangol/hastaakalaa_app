part of 'create_payment_form_bloc.dart';

@freezed
class CreatePaymentFormState with _$CreatePaymentFormState {
  const factory CreatePaymentFormState({
    required bool isLoading,
    required bool showErrors,
    required Either<InvalidInputFailure, int> art_id,
    required Either<InvalidInputFailure, int> price,
    required Either<InvalidInputFailure, int> seller_id,
    Either<Failure, dynamic>? failureOrSuccess,
  }) = _CreatePaymentFormState;

  factory CreatePaymentFormState.initial() => CreatePaymentFormState(
        showErrors: false,
        isLoading: false,
        failureOrSuccess: null,
        art_id: left(InvalidInputFailure()),
        price: left(InvalidInputFailure()),
        seller_id: left(InvalidInputFailure()),
      );
}
