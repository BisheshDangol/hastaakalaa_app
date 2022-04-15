part of 'search_user_watcher_bloc.dart';

@freezed
class SearchUserWatcherState with _$SearchUserWatcherState {
  const factory SearchUserWatcherState({
    required bool isLoading,
    required bool showErrors,
    required Either<InvalidInputFailure, String> keywordTitle,
    Either<Failure, List<UserEntity>>? failureOrSuccess,
    int? id,
  }) = _SearchUserWatcherState;
  factory SearchUserWatcherState.initial() => SearchUserWatcherState(
        isLoading: false,
        showErrors: false,
        keywordTitle: left(
          InvalidInputFailure(),
        ),
      );
}
