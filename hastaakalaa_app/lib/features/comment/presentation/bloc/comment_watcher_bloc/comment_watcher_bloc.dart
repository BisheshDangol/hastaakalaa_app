import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/comment/domain/entities/comment_entity.dart';
import 'package:hastaakalaa_app/features/comment/domain/usecases/get_comment_post_usecase.dart';

part 'comment_watcher_event.dart';
part 'comment_watcher_state.dart';
part 'comment_watcher_bloc.freezed.dart';

class CommentWatcherBloc
    extends Bloc<CommentWatcherEvent, CommentWatcherState> {
  final GetCommentPostUseCase _getCommentPostUseCase;
  CommentWatcherBloc(this._getCommentPostUseCase)
      : super(CommentWatcherState.initial()) {
    on<CommentWatcherEvent>((event, emit) async {
      await event.map(retrieveCommentList: (_RetrieveCommentList value) async {
        emit(state.copyWith(isLoading: true, failureOrSuccess: null));

        final artList = await _getCommentPostUseCase.call(value.id);

        emit(state.copyWith(
            failureOrSuccess: artList,
            isLoading: false,
            commentList: artList.fold((l) => [], (r) => r)));
      });
    });
  }
}
