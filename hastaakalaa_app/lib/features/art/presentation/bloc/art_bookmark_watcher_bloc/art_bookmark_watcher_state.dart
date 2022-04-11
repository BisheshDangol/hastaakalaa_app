part of 'art_bookmark_watcher_bloc.dart';

@freezed
class ArtBookmarkWatcherState with _$ArtBookmarkWatcherState {
  const factory ArtBookmarkWatcherState.initial() = _Initial;
  const factory ArtBookmarkWatcherState.loading() = _Loading;
  const factory ArtBookmarkWatcherState.loaded(List<ArtEntity> artList) =
      _Loaded;
  const factory ArtBookmarkWatcherState.failed(Failure failure) = _Failed;
}
