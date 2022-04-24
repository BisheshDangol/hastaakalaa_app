import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/sell_art_post_usecase.dart';

part 'sell_art_watcher_event.dart';
part 'sell_art_watcher_state.dart';
part 'sell_art_watcher_bloc.freezed.dart';

class SellArtWatcherBloc
    extends Bloc<SellArtWatcherEvent, SellArtWatcherState> {
  final SellArtPostUsecase _sellArtPostUsecase;
  SellArtWatcherBloc(this._sellArtPostUsecase)
      : super(SellArtWatcherState.initial()) {
    on<SellArtWatcherEvent>((event, emit) async {
      await event.map(retrieveArtList: (_) async {
        emit(SellArtWatcherState.loading());

        final artList = await _sellArtPostUsecase.call(NoParams());

        artList.fold((l) => emit(SellArtWatcherState.failed(l)),
            (r) => emit(SellArtWatcherState.loaded(r)));
      });
    });
  }
}
