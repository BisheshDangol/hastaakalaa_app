import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/user/domain/entities/user_entity.dart';
import 'package:hastaakalaa_app/features/user/domain/repositories/i_user_repository.dart';

class SearchUserUseCase implements Usecase<List<UserEntity>, String?> {
  final IUserRepository repository;
  SearchUserUseCase(this.repository);

  @override
  Future<Either<Failure, List<UserEntity>>> call(String? params) async {
    return await repository.searchUser(data: params);
  }
}

class Params extends Equatable {
  final String data;

  Params({required this.data});

  @override
  List<Object> get props => [data];
}
