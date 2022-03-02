part of 'art_search_watcher_bloc.dart';

@freezed
class ArtSearchWatcherState with _$ArtSearchWatcherState {
  const factory ArtSearchWatcherState({
    required bool isLoading,
    required bool showErrors,
    required Either<InvalidInputFailure, String> keywordTitle,
    Either<Failure, List<ArtEntity>>? failureOrSuccess,
  }) = _ArtSearchWatcherState;
  factory ArtSearchWatcherState.initial() => ArtSearchWatcherState(
        isLoading: false,
        showErrors: false,
        keywordTitle: left(
          InvalidInputFailure(),
        ),
      );
}
