import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';

abstract class IArtRepository {
  Future<Either<Failure, Unit>> createArtPost(
      {required Map<String, dynamic> data});

  Future<Either<Failure, List<ArtEntity>>> getArtList({required String data});

  Future<Either<Failure, List<ArtEntity>>> getAllArtPost();
}
