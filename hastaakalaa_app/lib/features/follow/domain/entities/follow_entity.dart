import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class FollowEntity extends Equatable {
  int id;
  int user_id;
  int follower_id;

  FollowEntity({
    required this.id,
    required this.user_id,
    required this.follower_id,
  });

  @override
  List<Object?> get props => [id, user_id, follower_id];
}
