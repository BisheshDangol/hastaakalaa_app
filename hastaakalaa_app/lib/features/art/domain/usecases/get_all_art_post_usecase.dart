import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/domain/repositories/i_art_repository.dart';

class GetAllArtPostUseCase implements Usecase<List<ArtEntity>, String> {
  final IArtRepository repository;
  GetAllArtPostUseCase(this.repository);

  @override
  Future<Either<Failure, List<ArtEntity>>> call(String params) async {
    return await repository.getArtList(data: params);
  }
}
