import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/application/invalid_input_failure.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:meta/meta.dart';

part 'upload_picture_form_event.dart';
part 'upload_picture_form_state.dart';
part 'upload_picture_form_bloc.freezed.dart';

class UploadPictureFormBloc
    extends Bloc<UploadPictureFormEvent, UploadPictureFormState> {
  UploadPictureFormBloc() : super(UploadPictureFormState.initial()) {
    on<UploadPictureFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
