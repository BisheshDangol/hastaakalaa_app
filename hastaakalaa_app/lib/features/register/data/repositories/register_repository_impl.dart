import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/network/network_info.dart';
import 'package:hastaakalaa_app/features/register/data/datasources/register_remote_data_source.dart';
import 'package:hastaakalaa_app/features/register/domain/repositories/i_register_repository.dart';

class RegisterRepositoryImpl implements IRegisterRepository {
  final IRegisterDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  RegisterRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, int>> registerUser(
      {required Map<String, dynamic> data}) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.createUser(data: data);
        debugPrint('This is the returned number $remoteList');
        return Right(remoteList);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }
}
