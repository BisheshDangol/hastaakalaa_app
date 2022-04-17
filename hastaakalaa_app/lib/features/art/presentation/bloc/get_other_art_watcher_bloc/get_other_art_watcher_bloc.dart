import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_other_art_watcher_event.dart';
part 'get_other_art_watcher_state.dart';

class GetOtherArtWatcherBloc extends Bloc<GetOtherArtWatcherEvent, GetOtherArtWatcherState> {
  GetOtherArtWatcherBloc() : super(GetOtherArtWatcherInitial()) {
    on<GetOtherArtWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
