part of 'buy_art_watcher_bloc.dart';

@freezed
class BuyArtWatcherEvent with _$BuyArtWatcherEvent {
  const factory BuyArtWatcherEvent.retrieveArtList() = _RetrieveArtList;
}
