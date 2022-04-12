import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/network/network_info.dart';
import 'package:hastaakalaa_app/features/comment/data/datasources/comment_remote_data_source.dart';
import 'package:hastaakalaa_app/features/comment/domain/entities/comment_entity.dart';
import 'package:hastaakalaa_app/features/comment/domain/repositories/i_comment_repository.dart';

class CommentRepositoryImpl implements ICommentRepository {
  final ICommentDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  CommentRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<CommentEntity>>> getCommentPost(
      {required int? data}) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteList = await remoteDataSource.getCommentPost(data: data);
        debugPrint('This is the returned comment $remoteList');
        return Right(remoteList);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    }
    throw UnimplementedError();
  }
}
