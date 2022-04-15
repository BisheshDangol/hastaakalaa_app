part of 'get_following_watcher_bloc.dart';

@freezed
class GetFollowingWatcherEvent with _$GetFollowingWatcherEvent {
  const factory GetFollowingWatcherEvent.retrieveFollowingList() =
      _RetrieveFollowingList;
  const factory GetFollowingWatcherEvent.changedId({int? id}) = _ChangedId;
}
