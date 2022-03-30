part of 'user_list_watcher_bloc.dart';

@freezed
class UserListWatcherEvent with _$UserListWatcherEvent {
  const factory UserListWatcherEvent.retrieveUserList() = _RetrieveUserList;
}
