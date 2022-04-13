import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';

abstract class IArtRepository {
  Future<Either<Failure, Unit>> createArtPost(
      {required Map<String, dynamic> data});

  Future<Either<Failure, List<ArtEntity>>> getArtList({required String data});

  Future<Either<Failure, List<ArtEntity>>> getAllArtPost();

  Future<Either<Failure, String>> likePost({required int? data});

  Future<Either<Failure, String>> bookmarkPost({required int? data});

  Future<Either<Failure, List<ArtEntity>>> getFilterArtPost(
      {required String? data});

  Future<Either<Failure, List<ArtEntity>>> getAllBookmarkPost();

  Future<Either<Failure, List<ArtEntity>>> buyArtPost();

  Future<Either<Failure, List<ArtEntity>>> sellArtPost();
}
