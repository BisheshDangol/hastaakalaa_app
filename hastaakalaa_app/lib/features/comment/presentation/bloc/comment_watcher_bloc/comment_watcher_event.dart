part of 'comment_watcher_bloc.dart';

@freezed
class CommentWatcherEvent with _$CommentWatcherEvent {
  const factory CommentWatcherEvent.retrieveCommentList({required int id}) =
      _RetrieveCommentList;
}
