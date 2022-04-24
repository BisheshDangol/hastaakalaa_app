import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/features/payment/domain/entites/payment_entity.dart';

class PaymentWrapper extends StatelessWidget {
  final PaymentEntity paymentEntity;
  const PaymentWrapper({Key? key, required this.paymentEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 3.0,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 25,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(paymentEntity.price.toString(),
                    style: TextStyle(fontSize: 20)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
