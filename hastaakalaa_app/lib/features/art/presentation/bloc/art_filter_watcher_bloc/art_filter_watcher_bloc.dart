import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/filter_post_usecase.dart';

part 'art_filter_watcher_event.dart';
part 'art_filter_watcher_state.dart';
part 'art_filter_watcher_bloc.freezed.dart';

class ArtFilterWatcherBloc
    extends Bloc<ArtFilterWatcherEvent, ArtFilterWatcherState> {
  final FilterPostUseCase _filterPostUseCase;
  ArtFilterWatcherBloc(this._filterPostUseCase)
      : super(ArtFilterWatcherState.initial()) {
    on<ArtFilterWatcherEvent>((event, emit) async {
      await event.map(retrieveArtList: (_RetrieveArtList value) async {
        emit(state.copyWith(isLoading: true, failureOrSuccess: null));

        final artList = await _filterPostUseCase.call(value.genre);

        emit(state.copyWith(
            failureOrSuccess: artList,
            isLoading: false,
            artList: artList.fold((l) => [], (r) => r)));
      }, changedGenre: (_ChangedGenre value) {
        emit(
          state.copyWith(
            genre: value.genre,
          ),
        );
      });
    });
  }
}
