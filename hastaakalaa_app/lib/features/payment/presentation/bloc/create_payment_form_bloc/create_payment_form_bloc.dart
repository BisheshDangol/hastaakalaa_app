import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/application/invalid_input_failure.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:meta/meta.dart';

part 'create_payment_form_event.dart';
part 'create_payment_form_state.dart';
part 'create_payment_form_bloc.freezed.dart';

class CreatePaymentFormBloc
    extends Bloc<CreatePaymentFormEvent, CreatePaymentFormState> {
  CreatePaymentFormBloc() : super(CreatePaymentFormState.initial()) {
    on<CreatePaymentFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
