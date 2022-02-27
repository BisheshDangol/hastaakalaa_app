import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/application/invalid_input_failure.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/art/data/models/art_model.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/create_art_post_usecase.dart';

part 'art_form_event.dart';
part 'art_form_state.dart';
part 'art_form_bloc.freezed.dart';

class ArtFormBloc extends Bloc<ArtFormEvent, ArtFormState> {
  final InputConvert _inputConvert;
  final CreateArtPostUseCase _registerUserUsecase;
  ArtFormBloc(this._inputConvert, this._registerUserUsecase)
      : super(ArtFormState.initial()) {
    on<ArtFormEvent>(
      (event, emit) async {
        await event.map(
          pressedCreate: (_) async {
            emit(state.copyWith(isLoading: true, failureOrSuccess: null));

            Either<Failure, Unit>? failureOrSuccess;

            if (state.description.isRight() &&
                state.price.isRight() &&
                state.title.isRight()) {
              failureOrSuccess = await _registerUserUsecase.call(
                ArtModel.toJson(
                    description: state.description.getOrElse(() => ''),
                    forSale: state.forSale.getOrElse(() => ''),
                    title: state.title.getOrElse(() => ''),
                    status: state.status.getOrElse(() => ''),
                    price: state.price.getOrElse(() => 0),
                    image: state.image.fold((_) => null, (r) => r)),
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
          changedImage: (_ChangedImage value) {
            debugPrint(value.toString());
            emit(
              state.copyWith(
                  failureOrSuccess: null,
                  image: _inputConvert.isImage(value: value.image)),
            );
            debugPrint(value.image.toString());
            ;
          },
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
                price: _inputConvert.isInteger(value: value.price.toString()),
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
          changedStatus: (_ChangedStatus value) {
            debugPrint(value.toString());
            emit(
              state.copyWith(
                failureOrSuccess: null,
                status: _inputConvert.notEmpty(
                  value: value.status,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
