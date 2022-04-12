import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/comment/domain/entities/comment_entity.dart';
import 'package:hastaakalaa_app/features/comment/domain/repositories/i_comment_repository.dart';

class GetCommentPostUseCase implements Usecase<List<CommentEntity>, int?> {
  final ICommentRepository repository;
  GetCommentPostUseCase(this.repository);

  @override
  Future<Either<Failure, List<CommentEntity>>> call(int? params) async {
    return await repository.getCommentPost(data: params);
  }
}

class Params extends Equatable {
  final String data;

  Params({required this.data});

  @override
  List<Object> get props => [data];
}
