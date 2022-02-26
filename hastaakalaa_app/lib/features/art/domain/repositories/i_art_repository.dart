import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';

abstract class IArtRepository {
  Future<Either<Failure, Unit>> createArtPost(
      {required Map<String, dynamic> data});
}
