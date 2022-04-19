import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/core/end_points.dart';
import 'package:hastaakalaa_app/core/errors/exceptions.dart';
import 'package:hastaakalaa_app/features/payment/data/models/payment_model.dart';
import 'package:http/http.dart' as http;

abstract class IPaymentDataSource {
  Future<Unit> createPayment({required Map<String, dynamic> data});
  Future<List<PaymentModel>> getPaymentList();
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
    debugPrint('================');
    debugPrint('${data['id']}');
    debugPrint('================');
    final dataToSend = jsonEncode(data);

    final response = await client.post(
        Uri.parse('${createPaymentEndPoint}${data['id']}'),
        headers: headers,
        body: dataToSend);

    if (response.statusCode == 201) {
      return unit;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<PaymentModel>> getPaymentList() async {
    String userToken =
        await TokenSharedPrefernces.instance.getTokenValue("token");
    Map<String, String> headers = {
      "content-type": "application/json",
      "Authorization": "Token ${userToken}",
    };
    final response =
        await client.get(Uri.parse(getPaymentEndPoint), headers: headers);

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List;
      return jsonData
          .map((e) => PaymentModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      throw ServerException();
    }
  }
}
