import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/application/invalid_input_failure.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/login/data/models/login_model.dart';
import 'package:hastaakalaa_app/features/login/domain/usecases/create_user_token_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final CreateUserTokenUseCase _createUserTokenUseCase;
  final InputConvert _inputConvert;
  LoginBloc(this._createUserTokenUseCase, this._inputConvert)
      : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.map(
        pressedSend: (_) async {
          debugPrint('this is the event triggered');
          emit(state.copyWith(isLoading: true, failureOrSuccess: null));

          Either<Failure, Unit>? failureOrSuccess;

          if (state.username.isRight() && state.password.isRight()) {
            failureOrSuccess = await _createUserTokenUseCase.call(
              LoginModel.toJson(
                username: state.username.getOrElse(() => ''),
                password: state.password.getOrElse(() => ''),
              ),
            );
            emit(state.copyWith(
              isLoading: false,
              failureOrSuccess: failureOrSuccess,
              showErrors: true,
            ));
          }
        },
        changedUsername: (_ChangedUsername value) {
          emit(
            state.copyWith(
              failureOrSuccess: null,
              username: _inputConvert.notEmpty(
                value: value.username,
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
      );
    });
  }
}
