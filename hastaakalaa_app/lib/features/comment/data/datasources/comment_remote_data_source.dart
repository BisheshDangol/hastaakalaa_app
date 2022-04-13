import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/core/end_points.dart';
import 'package:hastaakalaa_app/core/errors/exceptions.dart';
import 'package:hastaakalaa_app/features/comment/data/model/comment_model.dart';
import 'package:http/http.dart' as http;

abstract class ICommentDataSource {
  Future<List<CommentModel>> getCommentPost({required int? data});
  Future<Unit> postComment({required Map<String, dynamic> data});
}

class CommentRemoteDataSource implements ICommentDataSource {
  final http.Client client;
  CommentRemoteDataSource({required this.client});
  @override
  Future<List<CommentModel>> getCommentPost({required int? data}) async {
    final response = await client.get(
      Uri.parse('${getCommentEndPoint}${data}'),
    );

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List;
      return jsonData
          .map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Unit> postComment({required Map<String, dynamic> data}) async {
    String userToken =
        await TokenSharedPrefernces.instance.getTokenValue("token");
    Map<String, String> headers = {
      "content-type": "application/json",
      "Authorization": "Token ${userToken}",
    };
    final jsonData = json.encode(data);
    final urlDataEndPoint = data['art'];
    final url = Uri.parse('${postCommentEndPoint}${urlDataEndPoint}');
    final response = await client.post(url, body: jsonData, headers: headers);
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
