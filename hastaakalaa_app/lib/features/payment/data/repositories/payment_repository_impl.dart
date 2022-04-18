import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/network/network_info.dart';
import 'package:hastaakalaa_app/features/payment/data/datasources/payment_remote_data_source.dart';
import 'package:hastaakalaa_app/features/payment/domain/repositories/i_payment_repository.dart';

class PaymentRepositoryImpl implements IPaymentRepository {
  final IPaymentDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  PaymentRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, Unit>> createPayment(
      {required Map<String, dynamic> data}) async {
    if (await networkInfo.isConnected) {
      try {
        final paymentList = await remoteDataSource.createPayment(data: data);
        debugPrint('This is the returned number $paymentList');
        return Right(paymentList);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }
}
