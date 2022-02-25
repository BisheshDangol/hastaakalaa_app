import 'package:equatable/equatable.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/login/domain/repositories/i_login_repository.dart';

class CreateUserToken implements Usecase<Unit, Map<String, dynamic>> {
  ILoginRepository repository;
  CreateUserToken(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Map<String, dynamic> params) async {
    return await repository.createUserToken(data: params);
  }
}

class Params extends Equatable {
  final Map<String, dynamic> data;
  const Params({required this.data});
  @override
  List<Object?> get props => [data];
}
