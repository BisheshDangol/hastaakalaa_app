import 'package:hastaakalaa_app/features/user/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required String email,
    required String userName,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String address,
    required String userType,
    required List follower,
    required List followedBy,
  }) : super(
          email: email,
          userName: userName,
          firstName: firstName,
          lastName: lastName,
          phoneNumber: phoneNumber,
          address: address,
          userType: userType,
          follower: follower,
          followedBy: followedBy,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      userName: json['user_name'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      phoneNumber: json['phone_number'],
      address: json['address'],
      userType: json['user_type'],
      follower: json['follower'],
      followedBy: json['followed_by'],
    );
  }

  static Map<String, dynamic> toJson({
    String? email,
    String? userName,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? address,
    String? userType,
    List? follower,
    List? followedBy,
  }) {
    Map<String, dynamic> data = {};

    data['email'] = email;
    data['user_name'] = userName;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['phone_number'] = phoneNumber;
    data['address'] = address;
    data['user_type'] = userType;
    data['user_type'] = userType;
    data['follower'] = follower;
    data['followed_by'] = followedBy;

    return data;
  }
}
