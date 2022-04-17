part of 'get_other_art_watcher_bloc.dart';

@freezed
class GetOtherArtWatcherState with _$GetOtherArtWatcherState {
  const factory GetOtherArtWatcherState({
    required bool isLoading,
    required bool showErrors,
    int? id,
    List<ArtEntity>? artList,
    Either<Failure, List<ArtEntity>>? failureOrSuccess,
  }) = _GetOtherArtWatcherState;
  factory GetOtherArtWatcherState.initial() => GetOtherArtWatcherState(
        isLoading: false,
        showErrors: false,
        artList: [],
      );
}
