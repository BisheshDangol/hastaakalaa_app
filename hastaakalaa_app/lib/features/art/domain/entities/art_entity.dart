import 'dart:io';

import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ArtEntity extends Equatable {
  String id;
  String title;
  String image;
  String description;
  int price;
  String forSale;
  String status;
  List likes;

  ArtEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.forSale,
    required this.price,
    required this.image,
    required this.status,
    required this.likes,
  });

  @override
  List<Object?> get props =>
      [id, title, description, price, forSale, image, status, likes];
}
