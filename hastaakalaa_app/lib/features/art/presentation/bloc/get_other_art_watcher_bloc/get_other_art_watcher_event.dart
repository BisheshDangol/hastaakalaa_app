part of 'get_other_art_watcher_bloc.dart';

@freezed
class GetOtherArtWatcherEvent with _$GetOtherArtWatcherEvent {
  const factory GetOtherArtWatcherEvent.changedKeyword({int? id}) =
      _ChangedKeyword;
}
