import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/application/invalid_input_failure.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/payment/data/models/payment_model.dart';
import 'package:hastaakalaa_app/features/payment/domain/usecases/create_payment_usecase.dart';

part 'create_payment_form_event.dart';
part 'create_payment_form_state.dart';
part 'create_payment_form_bloc.freezed.dart';

class CreatePaymentFormBloc
    extends Bloc<CreatePaymentFormEvent, CreatePaymentFormState> {
  final CreatePaymentUseCase _createPaymentUseCase;
  final InputConvert _inputConvert;
  CreatePaymentFormBloc(this._inputConvert, this._createPaymentUseCase)
      : super(CreatePaymentFormState.initial()) {
    on<CreatePaymentFormEvent>((event, emit) async {
      await event.map(changedArtId: (_ChangedArtId value) {
        emit(
          state.copyWith(
            failureOrSuccess: null,
            art_id: _inputConvert.isInteger(
              value: value.id.toString(),
            ),
          ),
        );
      }, changedPrice: (_ChangedPrice value) {
        emit(
          state.copyWith(
            failureOrSuccess: null,
            price: _inputConvert.notEmpty(
              value: value.price.toString(),
            ),
          ),
        );
      }, changedSellerId: (_ChangedSellerId value) {
        emit(
          state.copyWith(
            failureOrSuccess: null,
            seller_id: _inputConvert.isInteger(
              value: value.seller_id.toString(),
            ),
          ),
        );
      }, pressedCreate: (_) async {
        emit(state.copyWith(isLoading: true, failureOrSuccess: null));

        Either<Failure, Unit>? failureOrSuccess;

        if (state.art_id.isRight() &&
            state.price.isRight() &&
            state.seller_id.isRight()) {
          failureOrSuccess = await _createPaymentUseCase.call(
            PaymentModel.toJson(
              id: state.art_id.getOrElse(() => 0),
              seller_id: state.seller_id.getOrElse(() => 0),
              price: state.price.getOrElse(() => ''),
            ),
          );
        }
        emit(
          state.copyWith(
            isLoading: false,
            failureOrSuccess: failureOrSuccess,
            showErrors: true,
          ),
        );
      });

      // }, pressedCreate: (_) async {

      // });
    });
  }
}
