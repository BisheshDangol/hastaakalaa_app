part of 'art_search_watcher_bloc.dart';

@freezed
class ArtSearchWatcherEvent with _$ArtSearchWatcherEvent {
  const factory ArtSearchWatcherEvent.changedKeyword({String? keyword}) =
      _ChangedKeyword;
  const factory ArtSearchWatcherEvent.pressedSearch() = _PressedSearch;
}
