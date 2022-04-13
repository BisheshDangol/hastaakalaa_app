part of 'sell_art_watcher_bloc.dart';

@freezed
class SellArtWatcherEvent with _$SellArtWatcherEvent {
  const factory SellArtWatcherEvent.retrieveArtList() = _RetrieveArtList;
}
