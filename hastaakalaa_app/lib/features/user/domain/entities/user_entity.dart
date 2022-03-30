import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class UserEntity extends Equatable {
  String email;
  String userName;
  String firstName;
  String lastName;
  String phoneNumber;
  String address;
  String userType;
  List follower;
  List followedBy;

  UserEntity({
    required this.address,
    required this.email,
    required this.firstName,
    required this.followedBy,
    required this.follower,
    required this.lastName,
    required this.phoneNumber,
    required this.userName,
    required this.userType,
  });

  @override
  List<Object?> get props => [
        address,
        email,
        firstName,
        followedBy,
        follower,
        lastName,
        phoneNumber,
        userName,
        userType
      ];
}
