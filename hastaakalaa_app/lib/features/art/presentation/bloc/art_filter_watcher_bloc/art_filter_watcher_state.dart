part of 'art_filter_watcher_bloc.dart';

@freezed
class ArtFilterWatcherState with _$ArtFilterWatcherState {
  const factory ArtFilterWatcherState.initial() = _Initial;
  const factory ArtFilterWatcherState.loading() = _Loading;
  const factory ArtFilterWatcherState.loaded(List<ArtEntity> artList) = _Loaded;
  const factory ArtFilterWatcherState.failed(Failure failure) = _Failed;
}
