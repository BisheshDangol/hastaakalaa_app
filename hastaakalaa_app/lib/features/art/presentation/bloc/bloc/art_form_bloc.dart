import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/application/invalid_input_failure.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/create_art_post_usecase.dart';

part 'art_form_event.dart';
part 'art_form_state.dart';
part 'art_form_bloc.freezed.dart';

class ArtFormBloc extends Bloc<ArtFormEvent, ArtFormState> {
  final InputConvert _inputConvert;
  final CreateArtPostUseCase _registerUserUsecase;
  ArtFormBloc(this._inputConvert, this._registerUserUsecase)
      : super(ArtFormState.initial()) {
    on<ArtFormEvent>((event, emit) async {
      await event.map(
          pressedCreate: (_) {},
          changedTitle: (_ChangedTitle value) {
            emit(
              state.copyWith(
                failureOrSuccess: null,
                title: _inputConvert.notEmpty(
                  value: value.title,
                ),
              ),
            );
          },
          changedImage: (_) {},
          changedDescription: (_ChangedDescription value) {
            emit(
              state.copyWith(
                failureOrSuccess: null,
                description: _inputConvert.notEmpty(
                  value: value.description,
                ),
              ),
            );
          },
          changedPrice: (_ChangedPrice value) {
            emit(
              state.copyWith(
                failureOrSuccess: null,
                price: _inputConvert.isInteger(
                  value: value.price.toString(),
                ),
              ),
            );
          },
          changedForSale: (_ChangedForSale value) {
            emit(
              state.copyWith(
                failureOrSuccess: null,
                forSale: _inputConvert.notEmpty(
                  value: value.forSale,
                ),
              ),
            );
          },
          changedStatus: (_) {});
    });
  }
}
