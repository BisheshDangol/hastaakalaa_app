import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/follow/domain/entities/follow_entity.dart';
import 'package:hastaakalaa_app/features/follow/domain/repositories/i_follow_repository.dart';

class GetOtherFollowerListUsecase implements Usecase<List<FollowEntity>, int?> {
  final IFollowRepository repository;
  GetOtherFollowerListUsecase(this.repository);

  @override
  Future<Either<Failure, List<FollowEntity>>> call(int? params) async {
    return await repository.getOtherFollowerList(data: params);
  }
}

class Params extends Equatable {
  final String data;

  Params({required this.data});

  @override
  List<Object> get props => [data];
}
