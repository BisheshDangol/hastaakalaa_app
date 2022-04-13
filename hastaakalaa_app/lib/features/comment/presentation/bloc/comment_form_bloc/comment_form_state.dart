part of 'comment_form_bloc.dart';

@freezed
class CommentFormState with _$CommentFormState {
  const factory CommentFormState({
    required bool isLoading,
    required Either<InvalidInputFailure, String> description,
    required bool showErrors,
    Either<Failure, Unit>? failureOrSuccess,
  }) = _CommentFormState;
  factory CommentFormState.initial() => CommentFormState(
        isLoading: false,
        showErrors: false,
        description: left(InvalidInputFailure()),
        failureOrSuccess: null,
      );
}
