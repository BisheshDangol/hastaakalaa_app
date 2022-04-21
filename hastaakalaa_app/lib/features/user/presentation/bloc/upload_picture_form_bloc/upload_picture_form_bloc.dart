import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/application/invalid_input_failure.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/user/data/models/user_model.dart';
import 'package:hastaakalaa_app/features/user/domain/usecases/upload_profile_image_usecase.dart';
import 'package:meta/meta.dart';

part 'upload_picture_form_event.dart';
part 'upload_picture_form_state.dart';
part 'upload_picture_form_bloc.freezed.dart';

class UploadPictureFormBloc
    extends Bloc<UploadPictureFormEvent, UploadPictureFormState> {
  final InputConvert _inputConvert;
  final UploadProfileImageUseCase _uploadProfileImageUseCase;
  UploadPictureFormBloc(this._inputConvert, this._uploadProfileImageUseCase)
      : super(UploadPictureFormState.initial()) {
    on<UploadPictureFormEvent>((event, emit) async {
      await event.map(pressedCreate: (_PressedCreate value) async {
        emit(state.copyWith(isLoading: true, failureOrSuccess: null));

        Either<Failure, int>? failureOrSuccess;

        if (state.image.isRight()) {
          failureOrSuccess = await _uploadProfileImageUseCase.call(
            UserModel.toJson(image: state.image.fold((_) => null, (r) => r)),
          );
        }
        emit(
          state.copyWith(
            isLoading: false,
            failureOrSuccess: failureOrSuccess,
            showErrors: true,
          ),
        );
      }, changedImage: (_ChangedImage value) {
        debugPrint(value.toString());
        emit(
          state.copyWith(
              failureOrSuccess: null,
              image: _inputConvert.isImage(value: value.image)),
        );
        debugPrint(value.image.toString());
        ;
      });
    });
  }
}
