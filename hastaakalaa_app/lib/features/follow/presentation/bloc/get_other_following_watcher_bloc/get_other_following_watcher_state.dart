part of 'get_other_following_watcher_bloc.dart';

@freezed
class GetOtherFollowingWatcherState with _$GetOtherFollowingWatcherState {
  const factory GetOtherFollowingWatcherState({
    required bool isLoading,
    int? id,
    required bool showErrors,
    List<FollowEntity>? followList,
    Either<Failure, List<FollowEntity>>? failureOrSuccess,
  }) = _GetOtherFollowingWatcherState;

  factory GetOtherFollowingWatcherState.initial() =>
      GetOtherFollowingWatcherState(
        showErrors: false,
        isLoading: false,
        failureOrSuccess: null,
        followList: [],
      );
}
