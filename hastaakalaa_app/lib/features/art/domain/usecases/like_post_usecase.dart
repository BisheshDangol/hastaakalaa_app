import 'package:equatable/equatable.dart';
import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/repositories/i_art_repository.dart';

class DeletePatientUsecase implements Usecase<Unit, int?> {
  IArtRepository repository;

  DeletePatientUsecase(this.repository);
  @override
  Future<Either<Failure, Unit>> call(int? params) async {
    return await repository.likePost(data: params);
  }
}

class Params extends Equatable {
  final int data;

  Params({required this.data});

  @override
  List<Object> get props => [data];
}
