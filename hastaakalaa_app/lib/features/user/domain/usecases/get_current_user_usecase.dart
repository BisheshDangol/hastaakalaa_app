import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/user/domain/entities/user_entity.dart';
import 'package:hastaakalaa_app/features/user/domain/repositories/i_user_repository.dart';

class GetCurrentUserUsecase implements Usecase<List<UserEntity>, NoParams> {
  final IUserRepository repository;
  GetCurrentUserUsecase(this.repository);
  @override
  Future<Either<Failure, List<UserEntity>>> call(NoParams params) async {
    return await repository.getAllUser();
  }
}
