import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_other_follower_watcher_event.dart';
part 'get_other_follower_watcher_state.dart';

class GetOtherFollowerWatcherBloc extends Bloc<GetOtherFollowerWatcherEvent, GetOtherFollowerWatcherState> {
  GetOtherFollowerWatcherBloc() : super(GetOtherFollowerWatcherInitial()) {
    on<GetOtherFollowerWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
