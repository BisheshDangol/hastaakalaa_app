import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ArtEntity extends Equatable {
  int id;
  String title;
  int user;
  String image;
  String description;
  int price;
  String forSale;
  String status;
  List likes;
  String genre;

  ArtEntity({
    required this.id,
    required this.title,
    required this.user,
    required this.description,
    required this.forSale,
    required this.price,
    required this.image,
    required this.status,
    required this.likes,
    required this.genre,
  });

  @override
  List<Object?> get props =>
      [id, title, user, description, price, forSale, image, status, likes];
}
