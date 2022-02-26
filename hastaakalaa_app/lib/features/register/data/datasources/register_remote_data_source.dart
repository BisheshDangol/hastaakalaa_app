import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/end_points.dart';
import 'package:hastaakalaa_app/core/errors/exceptions.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

abstract class IRegisterDataSource {
  Future<Unit> createUser({required Map<String, dynamic> data});
}

class RegisterRemoteDataSource implements IRegisterDataSource {
  final http.Client client;
  RegisterRemoteDataSource({required this.client});

  @override
  Future<Unit> createUser({required Map<String, dynamic> data}) async {
    debugPrint(data.toString());
    final url = Uri.parse(getUserToken);
    final header = {"content-type": "application/json"};
    final jsonData = json.encode(data);
    final response = await client.post(url, body: jsonData, headers: header);
    int code = response.statusCode;
    debugPrint('$code');
    debugPrint(response.body);
    if (response.statusCode == 200) {
      return unit;
    } else {
      throw ServerException();
    }
  }
}
