import 'dart:io';

import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/payment/domain/entites/payment_entity.dart';
import 'package:hastaakalaa_app/features/user/data/models/user_model.dart';

// ignore: must_be_immutable
class PaymentModel extends PaymentEntity {
  PaymentModel({
    required int id,
    required int buyer_id,
    required int seller_id,
    required String price,
  }) : super(
          buyer_id: buyer_id,
          id: id,
          price: price,
          seller_id: seller_id,
        );

  factory PaymentModel.fromJson(Map<String, dynamic> json) {
    return PaymentModel(
      id: json['id'],
      seller_id: json['seller_id'],
      buyer_id: json['buyer_id'],
      price: json['price'],
    );
  }

  static Map<String, dynamic> toJson({
    int? id,
    int? seller_id,
    int? buyer_id,
    String? price,
  }) {
    Map<String, dynamic> data = {};

    data['id'] = id;
    data['seller_id'] = seller_id;
    data['buyer_id'] = buyer_id;
    data['price'] = price;

    return data;
  }
}
