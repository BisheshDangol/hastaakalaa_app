part of 'comment_form_bloc.dart';

@freezed
class CommentFormEvent with _$CommentFormEvent {
  const factory CommentFormEvent.pressedCreate() = _PressedCreate;
  const factory CommentFormEvent.changedDescription({String? description}) =
      _ChangedDescription;
}
