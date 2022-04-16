part of 'get_other_following_watcher_bloc.dart';

@freezed
class GetOtherFollowingWatcherEvent with _$GetOtherFollowingWatcherEvent {
  const factory GetOtherFollowingWatcherEvent.retrieveFollowList(
      {required int id}) = _RetrieveFollowList;
  const factory GetOtherFollowingWatcherEvent.changedId({int? id}) = _ChangedId;
}
