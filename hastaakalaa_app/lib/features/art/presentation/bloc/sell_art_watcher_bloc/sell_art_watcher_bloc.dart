import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sell_art_watcher_event.dart';
part 'sell_art_watcher_state.dart';

class SellArtWatcherBloc extends Bloc<SellArtWatcherEvent, SellArtWatcherState> {
  SellArtWatcherBloc() : super(SellArtWatcherInitial()) {
    on<SellArtWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
