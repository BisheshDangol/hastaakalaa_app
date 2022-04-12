import 'package:equatable/equatable.dart';

class CommentEntity extends Equatable {
  final int id;
  final int user;
  final int art;
  final String description;
  final DateTime published;

  CommentEntity({
    required this.id,
    required this.art,
    required this.description,
    required this.published,
    required this.user,
  });
  @override
  List<Object?> get props => [id, art, description, published, user];
}
