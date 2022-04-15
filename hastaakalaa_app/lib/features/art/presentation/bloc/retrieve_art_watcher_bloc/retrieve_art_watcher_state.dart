part of 'retrieve_art_watcher_bloc.dart';

@freezed
class RetrieveArtWatcherState with _$RetrieveArtWatcherState {
  const factory RetrieveArtWatcherState.initial() = _Initial;
  const factory RetrieveArtWatcherState.loading() = _Loading;
  const factory RetrieveArtWatcherState.loaded(List<ArtEntity> artList) =
      _Loaded;
  const factory RetrieveArtWatcherState.failed(Failure failure) = _Failed;
}
