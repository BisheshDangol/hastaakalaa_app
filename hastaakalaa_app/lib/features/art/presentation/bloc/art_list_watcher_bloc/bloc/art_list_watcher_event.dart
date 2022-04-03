part of 'art_list_watcher_bloc.dart';

@freezed
class ArtListWatcherEvent with _$ArtListWatcherEvent {
  const factory ArtListWatcherEvent.retrieveArtList() = _RetrieveArtList;
  const factory ArtListWatcherEvent.pressedLike({required int id}) =
      _PressedLike;
}
