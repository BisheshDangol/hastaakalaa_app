part of 'get_following_watcher_bloc.dart';

@freezed
class GetFollowingWatcherState with _$GetFollowingWatcherState {
  const factory GetFollowingWatcherState({
    required bool isLoading,
    int? id,
    required bool showErrors,
    List<FollowEntity>? followingList,
    Either<Failure, List<FollowEntity>>? failureOrSuccess,
  }) = _GetFollowingWatcherState;

  factory GetFollowingWatcherState.initial() => GetFollowingWatcherState(
        showErrors: false,
        isLoading: false,
        failureOrSuccess: null,
        followingList: [],
      );
}
