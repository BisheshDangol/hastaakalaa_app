import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/payment/domain/entites/payment_entity.dart';

abstract class IPaymentRepository {
  Future<Either<Failure, Unit>> createPayment(
      {required Map<String, dynamic> data});
  Future<Either<Failure, List<PaymentEntity>>> getPayment();
}
