part of 'search_user_watcher_bloc.dart';

@freezed
class SearchUserWatcherEvent with _$SearchUserWatcherEvent {
  const factory SearchUserWatcherEvent.changedKeyword({String? keyword}) =
      _ChangedKeyword;
  const factory SearchUserWatcherEvent.pressedSearch() = _PressedSearch;
}
