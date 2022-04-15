import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_follow_watcher_event.dart';
part 'get_follow_watcher_state.dart';

class GetFollowWatcherBloc extends Bloc<GetFollowWatcherEvent, GetFollowWatcherState> {
  GetFollowWatcherBloc() : super(GetFollowWatcherInitial()) {
    on<GetFollowWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
