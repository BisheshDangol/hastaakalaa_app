import 'package:equatable/equatable.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/register/domain/repositories/i_register_repository.dart';

class RegisterUserUsecase implements Usecase<int, Map<String, dynamic>> {
  IRegisterRepository repository;
  RegisterUserUsecase(this.repository);

  @override
  Future<Either<Failure, int>> call(Map<String, dynamic> params) async {
    return await repository.registerUser(data: params);
  }
}

class Params extends Equatable {
  final Map<String, dynamic> data;
  const Params({required this.data});
  @override
  List<Object?> get props => [data];
}
