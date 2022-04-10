import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/filter_post_usecase.dart';
import 'package:meta/meta.dart';

part 'art_filter_watcher_event.dart';
part 'art_filter_watcher_state.dart';
part 'art_filter_watcher_bloc.freezed.dart';

class ArtFilterWatcherBloc
    extends Bloc<ArtFilterWatcherEvent, ArtFilterWatcherState> {
  final FilterPostUseCase _filterPostUseCase;
  ArtFilterWatcherBloc(this._filterPostUseCase)
      : super(ArtFilterWatcherState.initial()) {
    on<ArtFilterWatcherEvent>((event, emit) async {
      await event.map(
        retrieveArtList: (_) async {
          emit(ArtFilterWatcherState.loading());

          final artList = await _filterPostUseCase.call('abstract');

          artList.fold((l) => emit(ArtFilterWatcherState.failed(l)),
              (r) => emit(ArtFilterWatcherState.loaded(r)));
        },
      );
    });
  }
}
