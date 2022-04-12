import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/art_detail_page.dart';

class GridWrapper extends StatelessWidget {
  final ArtEntity artEntity;
  const GridWrapper({Key? key, required this.artEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ArtDetailPage(artEntity: artEntity),
            ),
          );
        },
        child: Container(
          child: Image.network(
            artEntity.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
