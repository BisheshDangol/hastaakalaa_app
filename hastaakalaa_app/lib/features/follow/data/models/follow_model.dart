// ignore_for_file: must_be_immutable

import 'package:hastaakalaa_app/features/follow/domain/entities/follow_entity.dart';

class FollowModel extends FollowEntity {
  FollowModel({
    required int id,
    required int user_id,
    required int follower_id,
  }) : super(
          id: id,
          user_id: user_id,
          follower_id: follower_id,
        );

  factory FollowModel.fromJson(Map<String, dynamic> json) {
    return FollowModel(
      id: json['id'],
      user_id: json['user_id'],
      follower_id: json['follower_id'],
    );
  }

  static Map<String, dynamic> toJson({
    int? id,
    int? user_id,
    int? follower_id,
  }) {
    Map<String, dynamic> data = {};

    data['id'] = id;
    data['user_id'] = user_id;
    data['follower_id'] = follower_id;

    return data;
  }
}
