import 'dart:io';

import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/user/data/models/user_model.dart';

// ignore: must_be_immutable
class ArtModel extends ArtEntity {
  ArtModel({
    required int id,
    required String title,
    required String image,
    required String description,
    required int price,
    required String forSale,
    required String status,
    required List likes,
    required int user,
  }) : super(
          id: id,
          title: title,
          user: user,
          image: image,
          description: description,
          price: price,
          forSale: forSale,
          status: status,
          likes: likes,
        );

  factory ArtModel.fromJson(Map<String, dynamic> json) {
    return ArtModel(
      user: json['user'],
      id: json['id'],
      title: json['title'],
      image: json['image'],
      description: json['description'],
      price: int.parse(json['price']),
      forSale: json['for_sale'].toString(),
      status: json['status'].toString(),
      likes: json['likes'],
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
