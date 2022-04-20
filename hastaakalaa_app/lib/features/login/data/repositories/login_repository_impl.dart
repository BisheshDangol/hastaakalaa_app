import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/network/network_info.dart';
import 'package:hastaakalaa_app/features/login/data/datasources/login_remote_data_source.dart';
import 'package:hastaakalaa_app/features/login/domain/repositories/i_login_repository.dart';

class LoginRepositoryImpl implements ILoginRepository {
  final ILoginRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  LoginRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, int>> createUserToken(
      {required Map<String, dynamic> data}) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.createUserToken(data: data);
        debugPrint('This is the returned number $remoteList');
        return Right(remoteList);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }
}
