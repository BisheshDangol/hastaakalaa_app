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
  Future<String> followUser({required int? data});
  Future<int> uploadProfilePicture({required Map<String, dynamic> data});
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

  @override
  Future<String> followUser({required int? data}) async {
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
    debugPrint('==============');
    debugPrint('follow user status code: $code');
    debugPrint('==============');
    debugPrint(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<int> uploadProfilePicture({required Map<String, dynamic> data}) async {
    String userToken =
        await TokenSharedPrefernces.instance.getTokenValue("token");
    Map<String, String> headers = {
      "content-type": "application/json",
      "Authorization": "Token ${userToken}",
    };

    final url = Uri.parse(uploadImageEndPoint);
    var request = http.MultipartRequest("POST", url);
    request.headers.addAll(headers);

    debugPrint('This is the sent data: ${data}');
    debugPrint('This is the sent image: ${data["profile_picture"].path}');

    var pic = await http.MultipartFile.fromPath(
        "image", data["profile_picture"].path);
    // Header was not provided
    request.files.add(pic);
    var response = await request.send();
    var responseData = await response.stream.toBytes();
    var responseString = String.fromCharCodes(responseData);
    print('This is the response ${responseString}');

    if (response.statusCode == 200) {
      return response.statusCode;
    } else {
      throw ServerException();
    }
  }
}
