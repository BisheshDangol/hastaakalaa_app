part of 'art_list_watcher_bloc.dart';

@freezed
class ArtListWatcherEvent with _$ArtListWatcherEvent {
  const factory ArtListWatcherEvent.changedKeyword({String? keyword}) =
      _ChangedKeyword;
  const factory ArtListWatcherEvent.pressedSearch() = _PressedSearch;
}
