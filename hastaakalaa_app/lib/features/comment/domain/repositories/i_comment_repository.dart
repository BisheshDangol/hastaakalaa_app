import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/comment/domain/entities/comment_entity.dart';

abstract class ICommentRepository {
  Future<Either<Failure, List<CommentEntity>>> getCommentPost(
      {required int? data});
}
