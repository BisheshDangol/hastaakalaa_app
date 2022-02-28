import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/end_points.dart';
import 'package:hastaakalaa_app/core/errors/exceptions.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

abstract class ILoginRemoteDataSource {
  Future<Unit> createUserToken({required Map<String, dynamic> data});
}

class LoginRemoteDataSource implements ILoginRemoteDataSource {
  final http.Client client;
  LoginRemoteDataSource({required this.client});

  @override
  Future<Unit> createUserToken({required Map<String, dynamic> data}) async {
    final url = Uri.parse(getUserToken);
    final header = {"content-type": "application/json"};
    final jsonData = json.encode(data);
    final response = await client.post(url, body: jsonData, headers: header);
    int code = response.statusCode;
    debugPrint('$code');
    debugPrint(response.body);

    final tokenData = json.decode(response.body);
    String tokenSession = tokenData["token"];

    if (response.statusCode == 200) {
      return unit;
    } else {
      throw ServerException();
    }
  }
}
