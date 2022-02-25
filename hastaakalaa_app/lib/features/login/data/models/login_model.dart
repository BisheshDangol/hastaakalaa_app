import 'package:hastaakalaa_app/features/login/domain/entities/login_entity.dart';

class LoginModel extends LoginEntity {
  const LoginModel({
    required String username,
    required String password,
  }) : super(
          username: username,
          password: password,
        );

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      username: json['username'],
      password: json['password'],
    );
  }

  static Map<String, dynamic> toJson({String? username, String? password}) {
    Map<String, dynamic> data = {};

    data['username'] = username;
    data['password'] = password;

    return data;
  }
}
