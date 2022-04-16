import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/core/end_points.dart';
import 'package:hastaakalaa_app/core/errors/exceptions.dart';
import 'package:hastaakalaa_app/features/follow/data/models/follow_model.dart';
import 'package:http/http.dart' as http;

abstract class IFollowDataSource {
  Future<List<FollowModel>> getFollowList();
  Future<List<FollowModel>> getFollowingList();
  Future<String> postFollow({required int? data});
  Future<List<FollowModel>> getFilterArtPost({required String? data});
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
        await client.get(Uri.parse(getFollowerUserEndPoint), headers: headers);

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List;
      return jsonData
          .map((e) => FollowModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<FollowModel>> getFollowingList() async {
    String userToken =
        await TokenSharedPrefernces.instance.getTokenValue("token");
    Map<String, String> headers = {
      "content-type": "application/json",
      "Authorization": "Token ${userToken}",
    };
    final response =
        await client.get(Uri.parse(getFollowingUserEndPoint), headers: headers);

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List;
      return jsonData
          .map((e) => FollowModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<String> postFollow({required int? data}) async {
    String userToken =
        await TokenSharedPrefernces.instance.getTokenValue("token");
    Map<String, String> headers = {
      "content-type": "application/json",
      "Authorization": "Token ${userToken}",
    };
    String endPointPatientValue = data.toString();
    final url = Uri.parse('$followUserEndPoint$endPointPatientValue');
    debugPrint(url.toString());
    final response = await client.post(url, headers: headers);

    int code = response.statusCode;
    debugPrint('$code');
    debugPrint(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<FollowModel>> getFilterArtPost({required String? data}) async {
    Uri url = Uri.parse('${getOtherFollowerUserEndPoint}${data}');
    final response = await client.get(
      url,
    );

    debugPrint(url.toString());

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
