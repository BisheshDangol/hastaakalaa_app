import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_following_watcher_event.dart';
part 'get_following_watcher_state.dart';

class GetFollowingWatcherBloc extends Bloc<GetFollowingWatcherEvent, GetFollowingWatcherState> {
  GetFollowingWatcherBloc() : super(GetFollowingWatcherInitial()) {
    on<GetFollowingWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
