part of 'comment_watcher_bloc.dart';

@freezed
class CommentWatcherState with _$CommentWatcherState {
  const factory CommentWatcherState({
    required bool isLoading,
    List<CommentEntity>? commentList,
    Either<Failure, List<CommentEntity>>? failureOrSuccess,
  }) = _CommentWatcherState;

  factory CommentWatcherState.initial() => CommentWatcherState(
        isLoading: false,
        commentList: [],
        failureOrSuccess: null,
      );
}
