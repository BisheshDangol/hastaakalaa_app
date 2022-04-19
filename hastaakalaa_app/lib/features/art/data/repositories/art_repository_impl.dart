import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/end_points.dart';
import 'package:hastaakalaa_app/core/errors/exceptions.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/network/network_info.dart';
import 'package:hastaakalaa_app/features/art/data/datasources/art_remote_data_source.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/domain/repositories/i_art_repository.dart';

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

  @override
  Future<Either<Failure, List<ArtEntity>>> getArtList(
      {required String data}) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.getArtList(data: data);
        debugPrint('This is the returned number $remoteList');
        return Right(remoteList);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ArtEntity>>> getAllArtPost() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.getAllArtPost();
        debugPrint('This is the returned list: $remoteList');
        return Right(remoteList);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> likePost({required int? data}) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.postLike(data: data);

        return Right(remoteList.toString());
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> bookmarkPost({required int? data}) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.postBookmark(data: data);

        return Right(remoteList.toString());
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ArtEntity>>> getFilterArtPost(
      {required String? data}) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.getFilterArtPost(data: data);
        debugPrint('This is the returned filter list: $remoteList');
        return Right(remoteList);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ArtEntity>>> getAllBookmarkPost() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.getAllBookmarkPost();
        debugPrint('This is the returned list: $remoteList');
        return Right(remoteList);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ArtEntity>>> buyArtPost() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.buyArtPost();
        debugPrint('This is the returned list: $remoteList');
        return Right(remoteList);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ArtEntity>>> sellArtPost() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.sellArtPost();
        debugPrint('This is the returned list: $remoteList');
        return Right(remoteList);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ArtEntity>>> retrieveArtPost() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.retrieveArtPost();
        debugPrint('This is the returned list: $remoteList');
        return Right(remoteList);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ArtEntity>>> getOtherArt(
      {required int? data}) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.getOtherArt(data: data);
        debugPrint('This is the returned filter list: $remoteList');
        return Right(remoteList);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, int>> deletePost({required int? data}) {
    // TODO: implement deletePost
    throw UnimplementedError();
  }
}
