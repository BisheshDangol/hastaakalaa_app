import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/get_bookmark_usecase.dart';

part 'art_bookmark_watcher_bloc.freezed.dart';
part 'art_bookmark_watcher_event.dart';
part 'art_bookmark_watcher_state.dart';

class ArtBookmarkWatcherBloc
    extends Bloc<ArtBookmarkWatcherEvent, ArtBookmarkWatcherState> {
  final GetBookmarkUsecase _bookmarkUsecase;
  ArtBookmarkWatcherBloc(this._bookmarkUsecase)
      : super(ArtBookmarkWatcherState.initial()) {
    on<ArtBookmarkWatcherEvent>((event, emit) async {
      await event.map(
        getArtList: (_) async {
          emit(ArtBookmarkWatcherState.loading());

          final doctorList = await _bookmarkUsecase.call(NoParams());

          doctorList.fold((l) => emit(ArtBookmarkWatcherState.failed(l)),
              (r) => emit(ArtBookmarkWatcherState.loaded(r)));
        },
      );
    });
  }
}
