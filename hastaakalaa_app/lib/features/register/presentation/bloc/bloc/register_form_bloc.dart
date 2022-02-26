import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/application/invalid_input_failure.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';

part 'register_form_event.dart';
part 'register_form_state.dart';
part 'register_form_bloc.freezed.dart';

class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  final InputConvert _inputConvert;
  RegisterFormBloc(this._inputConvert) : super(RegisterFormState.initial()) {
    on<RegisterFormEvent>((event, emit) async {
      await event.map(
          changedEmail: (_ChangedEmail value) {
            emit(
              state.copyWith(
                failureOrSuccess: null,
                email: _inputConvert.notEmpty(
                  value: value.email,
                ),
              ),
            );
          },
          changedFirstName: (_ChangedFirstName value) {},
          changedLastName: (_ChangedLastName value) {},
          changedPassword: (_ChangedPassword value) {},
          changedPhoneNumber: (_ChangedPhoneNumber value) {},
          changedUserName: (_ChangedUserName value) {},
          changedUserType: (_ChangedUserType value) {},
          pressedCreate: (_) {});
    });
  }
}
