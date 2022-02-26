import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/application/invalid_input_failure.dart';

part 'art_form_event.dart';
part 'art_form_state.dart';
part 'art_form_bloc.freezed.dart';

class ArtFormBloc extends Bloc<ArtFormEvent, ArtFormState> {
  ArtFormBloc() : super(ArtFormState.initial()) {
    on<ArtFormEvent>((event, emit) async {
      await event.map(
          pressedCreate: (_) {},
          changedTitle: (_) {},
          changedImage: (_) {},
          changedDescription: (_) {},
          changedPrice: (_) {},
          changedForSale: (_) {},
          changedStatus: (_) {});
    });
  }
}
