import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/get_all_art_post_list_usecase.dart';

part 'art_list_watcher_bloc.freezed.dart';
part 'art_list_watcher_event.dart';
part 'art_list_watcher_state.dart';

class ArtListWatcherBloc
    extends Bloc<ArtListWatcherEvent, ArtListWatcherState> {
  final GetAllArtPostListUsecase _getAllArtPostListUsecase;
  ArtListWatcherBloc(this._getAllArtPostListUsecase)
      : super(ArtListWatcherState.initial()) {
    on<ArtListWatcherEvent>(
      (event, emit) async {
        await event.map(
          retrieveDoctorList: (_) async {
            emit(ArtListWatcherState.loading());

            final doctorList = await _getAllArtPostListUsecase.call(NoParams());

            doctorList.fold((l) => emit(ArtListWatcherState.failed(l)),
                (r) => emit(ArtListWatcherState.loaded(r)));
          },
        );
      },
    );
  }
}
