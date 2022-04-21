part of 'upload_picture_form_bloc.dart';

@freezed
class UploadPictureFormEvent with _$UploadPictureFormEvent {
  const factory UploadPictureFormEvent.pressedCreate() = _PressedCreate;
  const factory UploadPictureFormEvent.changedImage({File? image}) =
      _ChangedImage;
}
