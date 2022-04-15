part of 'get_follow_watcher_bloc.dart';

@freezed
class GetFollowWatcherState with _$GetFollowWatcherState {
  const factory GetFollowWatcherState.initial() = _Initial;
  const factory GetFollowWatcherState.loading() = _Loading;
  const factory GetFollowWatcherState.loaded(List<FollowEntity> artList) =
      _Loaded;
  const factory GetFollowWatcherState.failed(Failure failure) = _Failed;
}
