part of 'upload_picture_form_bloc.dart';

@freezed
class UploadPictureFormState with _$UploadPictureFormState {
  const factory UploadPictureFormState({
    required bool isLoading,
    required Either<InvalidInputFailure, File> image,
    required bool showErrors,
    Either<Failure, dynamic>? failureOrSuccess,
  }) = _UploadPictureFormState;

  factory UploadPictureFormState.initial() => UploadPictureFormState(
        image: left(InvalidInputFailure()),
        showErrors: false,
        isLoading: false,
        failureOrSuccess: null,
      );
}
