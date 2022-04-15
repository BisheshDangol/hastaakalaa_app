import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/network/network_info.dart';
import 'package:hastaakalaa_app/features/user/data/datasources/user_remote_data_source.dart';
import 'package:hastaakalaa_app/features/user/domain/entities/user_entity.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/features/user/domain/repositories/i_user_repository.dart';

class UserRepositoryImpl implements IUserRepository {
  final IUserDataSource remoteDataSource;
  final NetworkInfo networkInfo;
  UserRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, List<UserEntity>>> getAllUser() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.getAllUser();
        debugPrint('This is the returned list: $remoteList');
        return Right(remoteList);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<UserEntity>>> getCurrentUser() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.getCurrentUser();
        debugPrint('This is the returned list: $remoteList');
        return Right(remoteList);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<UserEntity>>> searchUser(
      {required String? data}) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.searchUser(data: data);
        debugPrint('This is the returned search user list: $remoteList');
        return Right(remoteList);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> followUser({required int? data}) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.followUser(data: data);

        return Right(remoteList.toString());
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }
}
