part of 'get_follow_watcher_bloc.dart';

@freezed
class GetFollowWatcherEvent with _$GetFollowWatcherEvent {
  const factory GetFollowWatcherEvent.retrieveFollowList() =
      _RetrieveFollowList;
  const factory GetFollowWatcherEvent.changedId({int? id}) = _ChangedId;
}
