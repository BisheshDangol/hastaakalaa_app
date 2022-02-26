import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';

abstract class IRegisterRepository {
  Future<Either<Failure, Unit>> registerUser(
      {required Map<String, dynamic> data});
}
