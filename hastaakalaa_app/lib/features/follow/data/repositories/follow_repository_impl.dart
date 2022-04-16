import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/network/network_info.dart';
import 'package:hastaakalaa_app/features/follow/data/datasources/follow_remote_data_source.dart';
import 'package:hastaakalaa_app/features/follow/domain/entities/follow_entity.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/features/follow/domain/repositories/i_follow_repository.dart';

class FollowRepositoryImpl implements IFollowRepository {
  final IFollowDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  FollowRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, List<FollowEntity>>> getFollowList() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.getFollowList();
        debugPrint('This is the returned list: $remoteList');
        return Right(remoteList);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<FollowEntity>>> getFollowingList() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.getFollowingList();
        debugPrint('This is the returned list: $remoteList');
        return Right(remoteList);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> postFollow({required int? data}) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.postFollow(data: data);

        return Right(remoteList.toString());
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<FollowEntity>>> getOtherFollowerList(
      {required int? data}) {
    // TODO: implement getOtherFollowerList
    throw UnimplementedError();
  }
}
