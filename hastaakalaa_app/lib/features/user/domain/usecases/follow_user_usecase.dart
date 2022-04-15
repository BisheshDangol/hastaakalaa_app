import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/user/domain/repositories/i_user_repository.dart';

class FollowUserUsecase implements Usecase<String, int?> {
  IUserRepository repository;

  FollowUserUsecase(this.repository);
  @override
  Future<Either<Failure, String>> call(int? params) async {}
}

class Params extends Equatable {
  final int data;

  Params({required this.data});

  @override
  List<Object> get props => [data];
}
