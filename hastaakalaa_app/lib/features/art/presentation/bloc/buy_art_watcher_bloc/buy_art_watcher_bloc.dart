import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'buy_art_watcher_event.dart';
part 'buy_art_watcher_state.dart';

class BuyArtWatcherBloc extends Bloc<BuyArtWatcherEvent, BuyArtWatcherState> {
  BuyArtWatcherBloc() : super(BuyArtWatcherInitial()) {
    on<BuyArtWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
