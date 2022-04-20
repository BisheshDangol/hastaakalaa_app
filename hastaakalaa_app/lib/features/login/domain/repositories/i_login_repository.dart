import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';

abstract class ILoginRepository {
  Future<Either<Failure, int>> createUserToken(
      {required Map<String, dynamic> data});
}
