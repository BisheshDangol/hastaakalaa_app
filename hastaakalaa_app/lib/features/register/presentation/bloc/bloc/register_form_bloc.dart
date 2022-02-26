import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/application/invalid_input_failure.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/register/data/models/register_model.dart';
import 'package:hastaakalaa_app/features/register/domain/usecases/register_user_usecase.dart';

part 'register_form_event.dart';
part 'register_form_state.dart';
part 'register_form_bloc.freezed.dart';

class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  final InputConvert _inputConvert;
  final RegisterUserUsecase _registerUserUsecase;
  RegisterFormBloc(this._inputConvert, this._registerUserUsecase)
      : super(RegisterFormState.initial()) {
    on<RegisterFormEvent>(
      (event, emit) async {
        await event.map(
          changedAddress: (_ChangedAddress value) {
            emit(
              state.copyWith(
                failureOrSuccess: null,
                address: _inputConvert.notEmpty(
                  value: value.address,
                ),
              ),
            );
          },
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
          changedPhoneNumber: (_ChangedPhoneNumber value) {
            emit(
              state.copyWith(
                failureOrSuccess: null,
                phoneNumber: _inputConvert.notEmpty(
                  value: value.phoneNumber,
                ),
              ),
            );
          },
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
          changedUserType: (_ChangedUserType value) {
            emit(
              state.copyWith(
                failureOrSuccess: null,
                userType: _inputConvert.notEmpty(
                  value: value.userType,
                ),
              ),
            );
          },
          pressedCreate: (_) async {
            emit(state.copyWith(isLoading: true, failureOrSuccess: null));

            Either<Failure, Unit>? failureOrSuccess;

            if (state.userName.isRight() &&
                state.password.isRight() &&
                state.address.isRight() &&
                state.email.isRight() &&
                state.firstName.isRight() &&
                state.lastName.isRight() &&
                state.phoneNumber.isRight()) {
              failureOrSuccess = await _registerUserUsecase.call(
                RegisterModel.toJson(
                  username: state.userName.getOrElse(() => ''),
                  address: state.address.getOrElse(() => ''),
                  email: state.email.getOrElse(() => ''),
                  firstName: state.firstName.getOrElse(() => ''),
                  lastName: state.userName.getOrElse(() => ''),
                  password: state.password.getOrElse(() => ''),
                  phoneNumber: state.phoneNumber.getOrElse(() => ''),
                  userType: state.userType.getOrElse(() => ''),
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
          },
        );
      },
    );
  }
}
