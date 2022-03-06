import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'art_list_watcher_event.dart';
part 'art_list_watcher_state.dart';

class ArtListWatcherBloc extends Bloc<ArtListWatcherEvent, ArtListWatcherState> {
  ArtListWatcherBloc() : super(ArtListWatcherInitial()) {
    on<ArtListWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
