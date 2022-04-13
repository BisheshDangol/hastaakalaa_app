part of 'buy_art_watcher_bloc.dart';

@freezed
class BuyArtWatcherState with _$BuyArtWatcherState {
  const factory BuyArtWatcherState.initial() = _Initial;
  const factory BuyArtWatcherState.loading() = _Loading;
  const factory BuyArtWatcherState.loaded(List<ArtEntity> artList) = _Loaded;
  const factory BuyArtWatcherState.failed(Failure failure) = _Failed;
}
