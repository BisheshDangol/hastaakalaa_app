import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/core/end_points.dart';
import 'package:hastaakalaa_app/core/errors/exceptions.dart';
import 'package:hastaakalaa_app/features/payment/data/models/payment_model.dart';
import 'package:http/http.dart' as http;

abstract class IPaymentDataSource {
  Future<Unit> createPayment({required Map<String, dynamic> data});
}

class PaymentRemoteDataSource implements IPaymentDataSource {
  final http.Client client;

  PaymentRemoteDataSource({required this.client});

  @override
  Future<Unit> createPayment({required Map<String, dynamic> data}) async {
    String userToken =
        await TokenSharedPrefernces.instance.getTokenValue("token");
    Map<String, String> headers = {
      "content-type": "application/json",
      "Authorization": "Token ${userToken}",
    };

    final response =
        await client.get(Uri.parse(createPaymentEndPoint), headers: headers);

    if (response.statusCode == 201) {
      return unit;
    } else {
      throw ServerException();
    }
  }
}
