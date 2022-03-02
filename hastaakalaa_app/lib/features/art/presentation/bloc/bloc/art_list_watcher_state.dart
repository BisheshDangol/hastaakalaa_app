part of 'art_list_watcher_bloc.dart';

@freezed
class ArtListWatcherState with _$ArtListWatcherState {
  const factory ArtListWatcherState({
    required bool isLoading,
    required Either<InvalidInputFailure, String> keywordTitle,
    Either<Failure, ArtModel>? failureOrSuccess,
  }) = _ArtListWatcherState;
  factory ArtListWatcherState.initial() => ArtListWatcherState(
      isLoading: false, keywordTitle: left(InvalidInputFailure()));
  const factory ArtListWatcherState.loading() = _Loading;
  const factory ArtListWatcherState.loaded(List<ArtEntity> artList) = _Loaded;
  const factory ArtListWatcherState.failed(Failure failure) = _Failed;
}
