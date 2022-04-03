part of 'art_list_watcher_bloc.dart';

@freezed
class ArtListWatcherState with _$ArtListWatcherState {
  const factory ArtListWatcherState({
    required bool isLoading,
    List<ArtEntity>? artHistory,
    Either<Failure, List<ArtEntity>>? failureOrSuccess,
  }) = _ArtListWatcherState;

  factory ArtListWatcherState.initial() => ArtListWatcherState(
        isLoading: false,
        artHistory: [],
        failureOrSuccess: null,
      );
}
