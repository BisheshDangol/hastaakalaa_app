import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'retrieve_art_watcher_event.dart';
part 'retrieve_art_watcher_state.dart';

class RetrieveArtWatcherBloc extends Bloc<RetrieveArtWatcherEvent, RetrieveArtWatcherState> {
  RetrieveArtWatcherBloc() : super(RetrieveArtWatcherInitial()) {
    on<RetrieveArtWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
