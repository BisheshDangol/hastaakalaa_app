import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';

abstract class IPaymentRepository {
  Future<Either<Failure, Unit>> createPayment(
      {required Map<String, dynamic> data});
}
