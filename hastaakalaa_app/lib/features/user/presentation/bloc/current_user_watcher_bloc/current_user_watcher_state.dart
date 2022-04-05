part of 'current_user_watcher_bloc.dart';

@freezed
class CurrentUserWatcherState with _$CurrentUserWatcherState {
  const factory CurrentUserWatcherState.initial() = _Initial;
  const factory CurrentUserWatcherState.loading() = _Loading;
  const factory CurrentUserWatcherState.loaded(List<UserEntity> userList) =
      _Loaded;
  const factory CurrentUserWatcherState.failed(Failure failure) = _Failed;
}
