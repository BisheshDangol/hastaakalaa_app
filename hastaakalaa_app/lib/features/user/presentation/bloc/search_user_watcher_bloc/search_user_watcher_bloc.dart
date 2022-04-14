import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'search_user_watcher_event.dart';
part 'search_user_watcher_state.dart';

class SearchUserWatcherBloc extends Bloc<SearchUserWatcherEvent, SearchUserWatcherState> {
  SearchUserWatcherBloc() : super(SearchUserWatcherInitial()) {
    on<SearchUserWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
