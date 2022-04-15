import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/follow/domain/entities/follow_entity.dart';
import 'package:hastaakalaa_app/features/follow/domain/repositories/i_follow_repository.dart';

class GetAllFollowingListUseCase
    implements Usecase<List<FollowEntity>, NoParams> {
  final IFollowRepository repository;
  GetAllFollowingListUseCase(this.repository);

  @override
  Future<Either<Failure, List<FollowEntity>>> call(NoParams params) async {
    return await repository.getFollowingList();
  }
}
