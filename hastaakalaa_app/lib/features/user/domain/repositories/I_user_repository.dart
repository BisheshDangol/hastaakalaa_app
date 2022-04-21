import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/user_entity.dart';

abstract class IUserRepository {
  Future<Either<Failure, List<UserEntity>>> getAllUser();
  Future<Either<Failure, List<UserEntity>>> getCurrentUser();
  Future<Either<Failure, List<UserEntity>>> searchUser({required String? data});
  Future<Either<Failure, String>> followUser({required int? data});
  Future<Either<Failure, int>> uploadProfileImage(
      {required Map<String, dynamic> data});
}
