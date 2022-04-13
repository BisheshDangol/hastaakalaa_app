import 'dart:convert';

import 'package:hastaakalaa_app/core/end_points.dart';
import 'package:hastaakalaa_app/core/errors/exceptions.dart';
import 'package:hastaakalaa_app/features/comment/data/model/comment_model.dart';
import 'package:http/http.dart' as http;

abstract class ICommentDataSource {
  Future<List<CommentModel>> getCommentPost({required int? data});
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
}
