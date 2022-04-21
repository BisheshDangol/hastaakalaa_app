import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class UserEntity extends Equatable {
  int id;
  String email;
  String userName;
  String profile_picture;
  String firstName;
  String lastName;
  String phoneNumber;
  String address;
  String userType;
  List follower;
  List followedBy;

  UserEntity({
    required this.id,
    required this.address,
    required this.email,
    required this.firstName,
    required this.profile_picture,
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
