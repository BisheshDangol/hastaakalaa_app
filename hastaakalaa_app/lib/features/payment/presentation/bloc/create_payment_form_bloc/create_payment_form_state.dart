part of 'create_payment_form_bloc.dart';

@freezed
class CreatePaymentFormState with _$CreatePaymentFormState {
  const factory CreatePaymentFormState({
    required bool isLoading,
    required int price,
    required int seller_id,
    required bool showErrors,
    int? art_id,
    Either<Failure, dynamic>? failureOrSuccess,
  }) = _CreatePaymentFormState;

  factory CreatePaymentFormState.initial() => CreatePaymentFormState(
        price: 0,
        seller_id: 0,
        showErrors: false,
        isLoading: false,
        failureOrSuccess: null,
      );
}
