import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/retrieve_art_post_usecase.dart';

part 'retrieve_art_watcher_event.dart';
part 'retrieve_art_watcher_state.dart';
part 'retrieve_art_watcher_bloc.freezed.dart';

class RetrieveArtWatcherBloc
    extends Bloc<RetrieveArtWatcherEvent, RetrieveArtWatcherState> {
  final RetrieveArtPostUsecase _retrieveArtPostUsecase;
  RetrieveArtWatcherBloc(this._retrieveArtPostUsecase)
      : super(RetrieveArtWatcherState.initial()) {
    on<RetrieveArtWatcherEvent>((event, emit) async {
      await event.map(
        retrieveArtList: (_) async {
          emit(RetrieveArtWatcherState.loading());

          final artList = await _retrieveArtPostUsecase.call(NoParams());

          artList.fold((l) => emit(RetrieveArtWatcherState.failed(l)),
              (r) => emit(RetrieveArtWatcherState.loaded(r)));
        },
      );
    });
  }
}
