part of 'art_form_bloc.dart';

@freezed
class ArtFormState with _$ArtFormState {
  const factory ArtFormState({
    required bool isLoading,
    int? id,
    required Either<InvalidInputFailure, String> title,
    required Either<InvalidInputFailure, File> image,
    required Either<InvalidInputFailure, String> description,
    required Either<InvalidInputFailure, int> price,
    required Either<InvalidInputFailure, String> forSale,
    required Either<InvalidInputFailure, String> status,
    String? genre,
    required bool showErrors,
    Either<Failure, dynamic>? failureOrSuccess,
  }) = _ArtFormState;

  factory ArtFormState.initial() => ArtFormState(
        title: left(InvalidInputFailure()),
        image: left(InvalidInputFailure()),
        description: left(InvalidInputFailure()),
        price: left(InvalidInputFailure()),
        forSale: left(InvalidInputFailure()),
        status: left(InvalidInputFailure()),
        showErrors: false,
        isLoading: false,
        failureOrSuccess: null,
      );
}
