part of 'art_list_watcher_bloc.dart';

@freezed
class ArtListWatcherState with _$ArtListWatcherState {
  const factory ArtListWatcherState.initial() = _Initial;
  const factory ArtListWatcherState.loading() = _Loading;
  const factory ArtListWatcherState.loaded(List<ArtEntity> artList) = _Loaded;
  const factory ArtListWatcherState.failed(Failure failure) = _Failed;
}
