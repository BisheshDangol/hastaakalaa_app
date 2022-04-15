part of 'retrieve_art_watcher_bloc.dart';

@freezed
class RetrieveArtWatcherEvent with _$RetrieveArtWatcherEvent {
  const factory RetrieveArtWatcherEvent.retrieveArtList() = _RetrieveArtList;
}
