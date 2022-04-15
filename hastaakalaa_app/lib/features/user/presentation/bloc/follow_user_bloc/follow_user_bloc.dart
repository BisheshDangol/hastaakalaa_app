import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'follow_user_event.dart';
part 'follow_user_state.dart';

class FollowUserBloc extends Bloc<FollowUserEvent, FollowUserState> {
  FollowUserBloc() : super(FollowUserInitial()) {
    on<FollowUserEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
