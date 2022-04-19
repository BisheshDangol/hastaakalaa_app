part of 'delete_post_form_bloc.dart';

@freezed
class DeletePostFormEvent with _$DeletePostFormEvent {
  const factory DeletePostFormEvent.pressedDelete() = _PressedDelete;

  const factory DeletePostFormEvent.changedId({int? id}) = _ChangedId;
}
