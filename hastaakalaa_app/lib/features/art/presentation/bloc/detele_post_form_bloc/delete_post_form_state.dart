part of 'delete_post_form_bloc.dart';

@freezed
class DeletePostFormState with _$DeletePostFormState {
  const factory DeletePostFormState({
    required bool isLoading,
    int? id,
    required bool showErrors,
    Either<Failure, dynamic>? failureOrSuccess,
  }) = _DeletePostFormState;

  factory DeletePostFormState.initial() => DeletePostFormState(
        showErrors: false,
        isLoading: false,
        failureOrSuccess: null,
      );
}
