import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/payment/domain/repositories/i_payment_repository.dart';

class CreateArtPostUseCase implements Usecase<Unit, Map<String, dynamic>> {
  IPaymentRepository repository;
  CreateArtPostUseCase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Map<String, dynamic> params) async {
    return await repository.createPayment(data: params);
  }
}

class Params extends Equatable {
  final Map<String, dynamic> data;
  const Params({required this.data});
  @override
  List<Object?> get props => [data];
}
