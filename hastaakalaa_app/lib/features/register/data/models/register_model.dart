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
}
