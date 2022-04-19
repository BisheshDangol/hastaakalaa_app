import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class PaymentEntity extends Equatable {
  int id;
  int buyer_id;
  int seller_id;
  String price;

  PaymentEntity({
    required this.id,
    required this.buyer_id,
    required this.price,
    required this.seller_id,
  });
  @override
  List<Object?> get props => [id, buyer_id, seller_id, price];
}
