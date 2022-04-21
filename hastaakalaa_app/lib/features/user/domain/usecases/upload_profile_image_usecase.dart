import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/user/domain/repositories/i_user_repository.dart';

class UploadProfileImageUseCase implements Usecase<int, Map<String, dynamic>> {
  IUserRepository repository;
  UploadProfileImageUseCase(this.repository);

  @override
  Future<Either<Failure, int>> call(Map<String, dynamic> params) async {
    return await repository.uploadProfileImage(data: params);
  }
}

class Params extends Equatable {
  final Map<String, dynamic> data;
  const Params({required this.data});
  @override
  List<Object?> get props => [data];
}
