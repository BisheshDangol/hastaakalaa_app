part of 'get_follow_watcher_bloc.dart';

@freezed
class GetFollowWatcherState with _$GetFollowWatcherState {
  const factory GetFollowWatcherState({
    required bool isLoading,
    int? id,
    required bool showErrors,
    Either<Failure, dynamic>? failureOrSuccess,
  }) = _GetFollowWatcherState;

  factory GetFollowWatcherState.initial() => GetFollowWatcherState(
        showErrors: false,
        isLoading: false,
        failureOrSuccess: null,
      );
}
