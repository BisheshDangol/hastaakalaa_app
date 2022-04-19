import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/payment/domain/entites/payment_entity.dart';
import 'package:hastaakalaa_app/features/payment/domain/repositories/i_payment_repository.dart';

class GetPaymentListUsecase implements Usecase<List<PaymentEntity>, NoParams> {
  final IPaymentRepository repository;
  GetPaymentListUsecase(this.repository);

  @override
  Future<Either<Failure, List<PaymentEntity>>> call(NoParams params) async {
    return await repository.getPayment();
  }
}
