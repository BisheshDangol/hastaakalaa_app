import 'package:hastaakalaa_app/features/register/domain/entities/register_entity.dart';

class RegisterModel extends RegisterEntity {
  const RegisterModel({
    required String email,
    required String userName,
    required String firstName,
    required String password,
    required String lastName,
    required String phoneNumber,
    required String address,
    required String userType,
  }) : super(
          email: email,
          userName: userName,
          firstName: firstName,
          lastName: lastName,
          password: password,
          phoneNumber: phoneNumber,
          address: address,
          userType: userType,
        );

  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
      email: json['email'],
      password: json['password'],
      userName: json['user_name'],
      userType: json['user_type'],
      address: json['address'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      phoneNumber: json['phone_number'],
    );
  }

  static Map<String, dynamic> toJson({
    String? username,
    String? password,
    String? email,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? address,
    String? userType,
  }) {
    Map<String, dynamic> data = {};

    data['user_name'] = username;
    data['password'] = password;
    data['email'] = email;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['phone_number'] = phoneNumber;
    data['address'] = address;
    data['user_type'] = userType;

    return data;
  }
}
