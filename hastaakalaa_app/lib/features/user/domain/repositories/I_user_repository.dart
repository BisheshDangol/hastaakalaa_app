import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/user_entity.dart';

abstract class IUserRepository {
  Future<Either<Failure, List<UserEntity>>> getAllUser();
}
