part of 'follow_form_bloc.dart';

@freezed
class FollowFormEvent with _$FollowFormEvent {
  const factory FollowFormEvent.pressedFollow({required int id}) =
      _PressedFollow;
  const factory FollowFormEvent.changedId({int? id}) = _ChangedId;
}
