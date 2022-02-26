import 'package:equatable/equatable.dart';

class RegisterEntity extends Equatable {
  final String email;
  final String userName;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String address;
  final String userType;

  const RegisterEntity({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.address,
    required this.phoneNumber,
    required this.userName,
    required this.userType,
  });

  @override
  List<Object?> get props => [
        email,
        userName,
        firstName,
        lastName,
        phoneNumber,
        address,
        userType,
      ];
}
