import 'dart:io';

import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';

// ignore: must_be_immutable
class ArtModel extends ArtEntity {
  ArtModel({
    required String title,
    required File image,
    required String description,
    required int price,
    required String forSale,
    required String status,
  }) : super(
          title: title,
          image: image,
          description: description,
          price: price,
          forSale: forSale,
          status: status,
        );

  factory ArtModel.fromJson(Map<String, dynamic> json) {
    return ArtModel(
      title: json['title'],
      image: json['image'],
      description: json['description'],
      price: json['price'],
      forSale: json['for_sale'],
      status: json['status'],
    );
  }

  static Map<String, dynamic> toJson({
    String? title,
    File? image,
    String? description,
    int? price,
    String? forSale,
    String? status,
  }) {
    Map<String, dynamic> data = {};

    data['title'] = title;
    data['image'] = image;
    data['description'] = description;
    data['price'] = price;
    data['for_sale'] = forSale;
    data['status'] = status;

    return data;
  }
}
