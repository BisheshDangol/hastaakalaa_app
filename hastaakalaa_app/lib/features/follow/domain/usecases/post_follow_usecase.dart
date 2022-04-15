import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/follow/domain/repositories/i_follow_repository.dart';

class PostFollowUsecase implements Usecase<String, int?> {
  IFollowRepository repository;

  PostFollowUsecase(this.repository);
  @override
  Future<Either<Failure, String>> call(int? params) async {}
}

class Params extends Equatable {
  final int data;

  Params({required this.data});

  @override
  List<Object> get props => [data];
}
