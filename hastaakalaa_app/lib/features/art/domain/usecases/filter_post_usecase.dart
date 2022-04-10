import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/domain/repositories/i_art_repository.dart';

class FilterPostUseCase implements Usecase<List<ArtEntity>, String?> {
  final IArtRepository repository;
  FilterPostUseCase(this.repository);

  @override
  Future<Either<Failure, List<ArtEntity>>> call(String? params) async {
    return await repository.getFilterArtPost(data: params);
  }
}

class Params extends Equatable {
  final String data;

  Params({required this.data});

  @override
  List<Object> get props => [data];
}
