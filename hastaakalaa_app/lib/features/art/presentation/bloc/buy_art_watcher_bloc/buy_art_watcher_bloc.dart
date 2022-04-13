import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/buy_art_post_usecase.dart';
import 'package:meta/meta.dart';

part 'buy_art_watcher_event.dart';
part 'buy_art_watcher_state.dart';
part 'buy_art_watcher_bloc.freezed.dart';

class BuyArtWatcherBloc extends Bloc<BuyArtWatcherEvent, BuyArtWatcherState> {
  final BuyArtPostUsecase _buyArtPostUsecase;
  BuyArtWatcherBloc(this._buyArtPostUsecase)
      : super(BuyArtWatcherState.initial()) {
    on<BuyArtWatcherEvent>((event, emit) async {
      await event.map(retrieveArtList: (_) async {
        emit(BuyArtWatcherState.loading());

        final artList = await _buyArtPostUsecase.call(NoParams());

        artList.fold((l) => emit(BuyArtWatcherState.failed(l)),
            (r) => emit(BuyArtWatcherState.loaded(r)));
      });
    });
  }
}
