import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/network/network_info.dart';
import 'package:hastaakalaa_app/features/art/data/datasources/art_remote_data_source.dart';
import 'package:hastaakalaa_app/features/art/domain/repositories/i_art_repository.dart';
import 'package:hastaakalaa_app/features/register/domain/repositories/i_register_repository.dart';

class ArtRepositoryImpl implements IArtRepository {
  final IArtDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  ArtRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, Unit>> createArtPost(
      {required Map<String, dynamic> data}) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.createPost(data: data);
        debugPrint('This is the returned number $remoteList');
        return Right(remoteList);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }
}
