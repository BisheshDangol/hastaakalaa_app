part of 'art_list_bloc.dart';

@freezed
class ArtListState with _$ArtListState {
  const factory ArtListState({
    required bool isLoading,
    Either<Failure, ArtEntity>? failureOrSuccess,
  }) = _ArtListState;

  factory ArtListState.initial() => ArtListState(
        isLoading: false,
        failureOrSuccess: null,
      );
}
