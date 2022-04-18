part of 'create_payment_form_bloc.dart';

@freezed
class CreatePaymentFormEvent with _$CreatePaymentFormEvent {
  const factory CreatePaymentFormEvent.pressedCreate() = _PressedCreate;
  const factory CreatePaymentFormEvent.changedArtId({int? id}) = _ChangedArtId;
  const factory CreatePaymentFormEvent.changedSellerId({int? seller_id}) =
      _ChangedSellerId;
  const factory CreatePaymentFormEvent.changedPrice({int? price}) =
      _ChangedPrice;
}
