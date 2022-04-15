import 'dart:convert';

import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/core/end_points.dart';
import 'package:hastaakalaa_app/core/errors/exceptions.dart';
import 'package:hastaakalaa_app/features/follow/data/models/follow_model.dart';
import 'package:http/http.dart' as http;

abstract class IFollowDataSource {
  Future<List<FollowModel>> getFollowList();
}

class FollowRemoteDataSource implements IFollowDataSource {
  final http.Client client;
  FollowRemoteDataSource({required this.client});
  @override
  Future<List<FollowModel>> getFollowList() async {
    String userToken =
        await TokenSharedPrefernces.instance.getTokenValue("token");
    Map<String, String> headers = {
      "content-type": "application/json",
      "Authorization": "Token ${userToken}",
    };
    final response =
        await client.get(Uri.parse(retrieveArtPostEndpoint), headers: headers);

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List;
      return jsonData
          .map((e) => FollowModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      throw ServerException();
    }
  }
}
