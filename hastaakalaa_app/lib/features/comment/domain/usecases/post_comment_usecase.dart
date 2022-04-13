import 'package:dartz/dartz.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/comment/domain/repositories/i_comment_repository.dart';

class PostCommentUseCase implements Usecase<Unit, Map<String, dynamic>> {
  ICommentRepository repository;
  PostCommentUseCase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Map<String, dynamic> params) async {
    return await repository.postComment(data: params);
  }
}
