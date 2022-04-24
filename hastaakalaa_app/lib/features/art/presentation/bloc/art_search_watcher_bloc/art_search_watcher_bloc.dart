import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/application/invalid_input_failure.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/get_all_art_post_usecase.dart';

part 'art_search_watcher_event.dart';
part 'art_search_watcher_state.dart';
part 'art_search_watcher_bloc.freezed.dart';

class ArtSearchWatcherBloc
    extends Bloc<ArtSearchWatcherEvent, ArtSearchWatcherState> {
  final InputConvert _inputConvert;
  final GetAllArtPostUseCase _allArtPostUseCase;
  ArtSearchWatcherBloc(this._inputConvert, this._allArtPostUseCase)
      : super(ArtSearchWatcherState.initial()) {
    on<ArtSearchWatcherEvent>((event, emit) async {
      await event.map(
        changedKeyword: (_ChangedKeyword value) {
          emit(
            state.copyWith(
              keywordTitle: _inputConvert.notEmpty(
                value: value.keyword,
              ),
            ),
          );
        },
        pressedSearch: (_) async {
          emit(state.copyWith(isLoading: true, failureOrSuccess: null));

          Either<Failure, List<ArtEntity>>? failureOrSuccess;

          if (state.keywordTitle.isRight()) {
            failureOrSuccess = await _allArtPostUseCase
                .call(state.keywordTitle.fold((l) => l.msg, (r) => r));
          }

          emit(state.copyWith(
            isLoading: false,
            failureOrSuccess: failureOrSuccess,
            showErrors: true,
          ));
        },
      );
    });
  }
}
