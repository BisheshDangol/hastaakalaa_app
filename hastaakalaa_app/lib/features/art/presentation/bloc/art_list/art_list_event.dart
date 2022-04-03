part of 'art_list_bloc.dart';

@freezed
class ArtListEvent with _$ArtListEvent {
  const factory ArtListEvent.retrieveArtList() = _RetrieveArtList;
  const factory ArtListEvent.pressedLike({int? id}) = _PressedLike;
}
