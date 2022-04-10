part of 'art_filter_watcher_bloc.dart';

@freezed
class ArtFilterWatcherEvent with _$ArtFilterWatcherEvent {
  const factory ArtFilterWatcherEvent.retrieveArtList() = _RetrieveArtList;
}
