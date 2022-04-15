part of 'follow_form_bloc.dart';

@freezed
class FollowFormState with _$FollowFormState {
  const factory FollowFormState({
    required bool isLoading,
    int? id,
    required bool showErrors,
    List<FollowEntity>? followList,
    Either<Failure, String>? failureOrSuccess,
  }) = _FollowFormState;

  factory FollowFormState.initial() => FollowFormState(
        showErrors: false,
        isLoading: false,
        failureOrSuccess: null,
        followList: [],
      );
}
