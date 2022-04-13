import 'package:hastaakalaa_app/features/comment/domain/entities/comment_entity.dart';

class CommentModel extends CommentEntity {
  CommentModel({
    required int id,
    required int art,
    required int user,
    required String description,
    required String published,
  }) : super(
          id: id,
          art: art,
          user: user,
          description: description,
          published: published,
        );

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
        user: json['user'],
        id: json['id'],
        art: json['art'],
        description: json['description'],
        published: json['published']);
  }

  static Map<String, dynamic> toJson({
    int? art,
    int? user,
    String? description,
    String? published,
  }) {
    Map<String, dynamic> data = {};

    data['art'] = art;
    data['user'] = user;
    data['published'] = published;
    data['description'] = description;

    return data;
  }
}
