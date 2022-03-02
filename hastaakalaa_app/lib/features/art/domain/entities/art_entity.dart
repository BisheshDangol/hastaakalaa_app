import 'dart:io';

import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ArtEntity extends Equatable {
  String title;
  String image;
  String description;
  int price;
  String forSale;
  String status;

  ArtEntity({
    required this.title,
    required this.description,
    required this.forSale,
    required this.price,
    required this.image,
    required this.status,
  });

  @override
  List<Object?> get props =>
      [title, description, price, forSale, image, status];
}
