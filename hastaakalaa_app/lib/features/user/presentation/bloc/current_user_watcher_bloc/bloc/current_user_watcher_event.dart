part of 'current_user_watcher_bloc.dart';

@freezed
class CurrentUserWatcherEvent with _$CurrentUserWatcherEvent {
  const factory CurrentUserWatcherEvent.retrieveUserList() = _RetrieveUserList;
}
