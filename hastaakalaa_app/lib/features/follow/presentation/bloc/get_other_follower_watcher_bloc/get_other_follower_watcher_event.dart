part of 'get_other_follower_watcher_bloc.dart';

@freezed
class GetOtherFollowerWatcherEvent with _$GetOtherFollowerWatcherEvent {
  const factory GetOtherFollowerWatcherEvent.retrieveFollowList() =
      _RetrieveFollowList;
  const factory GetOtherFollowerWatcherEvent.changedId({int? id}) = _ChangedId;
}
