import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_other_following_watcher_event.dart';
part 'get_other_following_watcher_state.dart';

class GetOtherFollowingWatcherBloc extends Bloc<GetOtherFollowingWatcherEvent, GetOtherFollowingWatcherState> {
  GetOtherFollowingWatcherBloc() : super(GetOtherFollowingWatcherInitial()) {
    on<GetOtherFollowingWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
