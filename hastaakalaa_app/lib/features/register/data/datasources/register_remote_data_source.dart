import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/end_points.dart';
import 'package:http/http.dart' as http;

abstract class IRegisterDataSource {
  Future<int> createUser({required Map<String, dynamic> data});
}

class RegisterRemoteDataSource implements IRegisterDataSource {
  final http.Client client;
  RegisterRemoteDataSource({required this.client});

  @override
  Future<int> createUser({required Map<String, dynamic> data}) async {
    debugPrint(data.toString());
    final url = Uri.parse(createUserEndPoint);
    final header = {"content-type": "application/json"};
    final jsonData = json.encode(data);
    final response = await client.post(url, body: jsonData, headers: header);
    int code = response.statusCode;
    debugPrint('$code');
    debugPrint(response.body);
    if (response.statusCode == 201) {
      return response.statusCode;
    } else {
      throw response.statusCode;
    }
  }
}
