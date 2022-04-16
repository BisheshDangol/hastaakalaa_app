part of 'get_other_follower_watcher_bloc.dart';

@freezed
class GetOtherFollowerWatcherState with _$GetOtherFollowerWatcherState {
  const factory GetOtherFollowerWatcherState({
    required bool isLoading,
    int? id,
    required bool showErrors,
    List<FollowEntity>? followList,
    Either<Failure, List<FollowEntity>>? failureOrSuccess,
  }) = _GetOtherFollowerWatcherState;

  factory GetOtherFollowerWatcherState.initial() =>
      GetOtherFollowerWatcherState(
        showErrors: false,
        isLoading: false,
        failureOrSuccess: null,
        followList: [],
      );
}
