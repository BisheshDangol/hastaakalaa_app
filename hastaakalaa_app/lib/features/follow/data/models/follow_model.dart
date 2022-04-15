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
}
