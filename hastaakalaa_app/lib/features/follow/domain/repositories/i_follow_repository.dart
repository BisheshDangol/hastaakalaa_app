import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/follow/domain/entities/follow_entity.dart';

abstract class IFollowRepository {
  Future<Either<Failure, List<FollowEntity>>> getFollowList();

  Future<Either<Failure, List<FollowEntity>>> getFollowingList();

  Future<Either<Failure, String>> postFollow({required int? data});

  Future<Either<Failure, List<FollowEntity>>> getOtherFollowerList(
      {required int? data});
}
