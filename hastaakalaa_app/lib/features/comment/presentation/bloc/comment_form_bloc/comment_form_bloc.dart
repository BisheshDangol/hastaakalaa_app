import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/application/invalid_input_failure.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/comment/data/model/comment_model.dart';
import 'package:hastaakalaa_app/features/comment/domain/usecases/post_comment_usecase.dart';

part 'comment_form_event.dart';
part 'comment_form_state.dart';
part 'comment_form_bloc.freezed.dart';

class CommentFormBloc extends Bloc<CommentFormEvent, CommentFormState> {
  final InputConvert _inputConvert;
  final PostCommentUseCase _postCommentUseCase;
  CommentFormBloc(this._inputConvert, this._postCommentUseCase)
      : super(CommentFormState.initial()) {
    on<CommentFormEvent>((event, emit) async {
      await event.map(changedDescription: (_ChangedDescription value) {
        emit(
          state.copyWith(
            failureOrSuccess: null,
            description: _inputConvert.notEmpty(
              value: value.description,
            ),
          ),
        );
      }, pressedCreate: (_) async {
        emit(state.copyWith(isLoading: true, failureOrSuccess: null));

        Either<Failure, Unit>? failureOrSuccess;

        if (state.description.isRight()) {
          failureOrSuccess = await _postCommentUseCase.call(
            CommentModel.toJson(
                description: state.description.getOrElse(() => '')),
          );
        }
        emit(
          state.copyWith(
            isLoading: false,
            failureOrSuccess: failureOrSuccess,
            showErrors: true,
          ),
        );
      });
    });
  }
}
