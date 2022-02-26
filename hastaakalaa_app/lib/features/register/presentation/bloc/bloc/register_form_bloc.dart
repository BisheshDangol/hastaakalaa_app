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
          changedAddress: (_ChangedAddress value) {},
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
          changedFirstName: (_ChangedFirstName value) {
            emit(
              state.copyWith(
                failureOrSuccess: null,
                firstName: _inputConvert.notEmpty(
                  value: value.firstName,
                ),
              ),
            );
          },
          changedLastName: (_ChangedLastName value) {
            emit(
              state.copyWith(
                failureOrSuccess: null,
                lastName: _inputConvert.notEmpty(
                  value: value.lastName,
                ),
              ),
            );
          },
          changedPassword: (_ChangedPassword value) {
            emit(
              state.copyWith(
                failureOrSuccess: null,
                password: _inputConvert.notEmpty(
                  value: value.password,
                ),
              ),
            );
          },
          changedPhoneNumber: (_ChangedPhoneNumber value) {},
          changedUserName: (_ChangedUserName value) {
            emit(
              state.copyWith(
                failureOrSuccess: null,
                userName: _inputConvert.notEmpty(
                  value: value.userName,
                ),
              ),
            );
          },
          changedUserType: (_ChangedUserType value) {},
          pressedCreate: (_) {});
    });
  }
}
