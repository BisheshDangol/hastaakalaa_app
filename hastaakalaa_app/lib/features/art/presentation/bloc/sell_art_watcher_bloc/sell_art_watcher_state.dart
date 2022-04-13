part of 'sell_art_watcher_bloc.dart';

@freezed
class SellArtWatcherState with _$SellArtWatcherState {
  const factory SellArtWatcherState.initial() = _Initial;
  const factory SellArtWatcherState.loading() = _Loading;
  const factory SellArtWatcherState.loaded(List<ArtEntity> artList) = _Loaded;
  const factory SellArtWatcherState.failed(Failure failure) = _Failed;
}
