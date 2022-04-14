import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/core/end_points.dart';
import 'package:hastaakalaa_app/core/errors/exceptions.dart';
import 'package:hastaakalaa_app/features/user/data/models/user_model.dart';
import 'package:http/http.dart' as http;

abstract class IUserDataSource {
  Future<List<UserModel>> getAllUser();
  Future<List<UserModel>> getCurrentUser();
  Future<List<UserModel>> searchUser({required String? data});
}

class UserRemoteDataSource implements IUserDataSource {
  final http.Client client;
  UserRemoteDataSource({required this.client});
  @override
  Future<List<UserModel>> getAllUser() async {
    final response = await client.get(
      Uri.parse(retrieveUserList),
    );

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List;
      return jsonData
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      throw ServerException();
    }
  }

  Future<List<UserModel>> getCurrentUser() async {
    String userToken =
        await TokenSharedPrefernces.instance.getTokenValue("token");
    Map<String, String> header = {
      "content-type": "application/json",
      "Authorization": "Token ${userToken}",
    };
    final response =
        await client.get(Uri.parse(getCurrentUserEndPoint), headers: header);

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List;
      return jsonData
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<UserModel>> searchUser({required String? data}) async {
    Uri url = Uri.parse('${searchUserEndPoint}${data}');
    final response = await client.get(
      url,
    );

    debugPrint(url.toString());

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List;
      return jsonData
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      throw ServerException();
    }
  }
}
