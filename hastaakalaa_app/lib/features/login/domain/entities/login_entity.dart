import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable {
  final String username;
  final String password;

  const LoginEntity({
    required this.username,
    required this.password,
  });

  @override
  List<Object?> get props => [username, password];
}
