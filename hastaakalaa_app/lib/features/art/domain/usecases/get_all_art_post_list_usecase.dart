import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/domain/repositories/i_art_repository.dart';

class GetAllArtPostListUsecase implements Usecase<List<ArtEntity>, NoParams> {
  final IArtRepository repository;
  GetAllArtPostListUsecase(this.repository);

  @override
  Future<Either<Failure, List<ArtEntity>>> call(NoParams params) async {
    return await repository.getAllArtPost();
  }
}
