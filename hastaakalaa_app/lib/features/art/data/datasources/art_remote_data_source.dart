import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/end_points.dart';
import 'package:hastaakalaa_app/core/errors/exceptions.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

abstract class IArtDataSource {
  Future<Unit> createPost({required Map<String, dynamic> data});
}

class ArtRemoteDataSource implements IArtDataSource {
  final http.Client client;
  ArtRemoteDataSource({required this.client});

  @override
  Future<Unit> createPost({required Map<String, dynamic> data}) async {
    debugPrint(data.toString());
    final url = Uri.parse(createUserEndPoint);
    final header = {
      "Authorization": "Token 021bdc00d8ddda2301cf900911c8accd9ada803c"
    };
    final jsonData = json.encode(data);
    final response = await client.post(url, body: jsonData, headers: header);
    int code = response.statusCode;
    debugPrint('$code');
    debugPrint(response.body);
    if (response.statusCode == 201) {
      return unit;
    } else {
      throw ServerException();
    }
  }
}
