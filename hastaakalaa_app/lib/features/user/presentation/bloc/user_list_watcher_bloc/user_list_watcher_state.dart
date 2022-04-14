part of 'user_list_watcher_bloc.dart';

@freezed
class UserListWatcherState with _$UserListWatcherState {
  const factory UserListWatcherState.initial() = _Initial;
  const factory UserListWatcherState.loading() = _Loading;
  const factory UserListWatcherState.loaded(List<UserEntity> userList) =
      _Loaded;
  const factory UserListWatcherState.failed(Failure failure) = _Failed;
}
