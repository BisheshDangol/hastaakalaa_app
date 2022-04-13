import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:meta/meta.dart';

part 'buy_art_watcher_event.dart';
part 'buy_art_watcher_state.dart';
part 'buy_art_watcher_bloc.freezed.dart';

class BuyArtWatcherBloc extends Bloc<BuyArtWatcherEvent, BuyArtWatcherState> {
  BuyArtWatcherBloc() : super(BuyArtWatcherState.initial()) {
    on<BuyArtWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
