import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/domain/repositories/i_art_repository.dart';

class GetOtherPostUsecase implements Usecase<List<ArtEntity>, int?> {
  final IArtRepository repository;
  GetOtherPostUsecase(this.repository);

  @override
  Future<Either<Failure, List<ArtEntity>>> call(int? params) async {
    return await repository.getOtherArt(data: params);
  }
}
