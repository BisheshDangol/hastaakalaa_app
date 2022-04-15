part of 'search_user_watcher_bloc.dart';

@freezed
class SearchUserWatcherEvent with _$SearchUserWatcherEvent {
  const factory SearchUserWatcherEvent.changedKeyword({String? keyword}) =
      _ChangedKeyword;
  const factory SearchUserWatcherEvent.pressedSearch() = _PressedSearch;
  const factory SearchUserWatcherEvent.pressedFollow({required int id}) =
      _PressedFollow;
  const factory SearchUserWatcherEvent.changedId({int? id}) = _ChangedId;
}
