import 'dart:convert';
import 'package:hastaakalaa_app/core/end_points.dart';
import 'package:hastaakalaa_app/core/errors/exceptions.dart';
import 'package:hastaakalaa_app/features/user/data/models/user_model.dart';
import 'package:http/http.dart' as http;

abstract class IUserDataSource {
  Future<List<UserModel>> getAllUser();
  Future<List<UserModel>> getCurrentUser();
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
}
