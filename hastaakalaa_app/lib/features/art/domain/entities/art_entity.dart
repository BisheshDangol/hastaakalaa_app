import 'dart:io';

import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ArtEntity extends Equatable {
  String title;
  File image;
  String description;
  String forSale;
  String status;

  ArtEntity({
    required this.title,
    required this.description,
    required this.forSale,
    required this.image,
    required this.status,
  });

  @override
  List<Object?> get props => [title, description, forSale, image, status];
}
