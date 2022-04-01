part of 'art_form_bloc.dart';

@freezed
class ArtFormEvent with _$ArtFormEvent {
  const factory ArtFormEvent.pressedCreate() = _PressedCreate;
  const factory ArtFormEvent.pressedLike() = _PressedLike;
  const factory ArtFormEvent.changedId({int? id}) = _ChangedId;
  const factory ArtFormEvent.changedTitle({String? title}) = _ChangedTitle;
  const factory ArtFormEvent.changedImage({File? image}) = _ChangedImage;
  const factory ArtFormEvent.changedDescription({String? description}) =
      _ChangedDescription;
  const factory ArtFormEvent.changedPrice({int? price}) = _ChangedPrice;
  const factory ArtFormEvent.changedForSale({String? forSale}) =
      _ChangedForSale;
  const factory ArtFormEvent.changedStatus({String? status}) = _ChangedStatus;
}
