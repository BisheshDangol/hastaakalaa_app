import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/art_detail_page.dart';

class SearchWrapper extends StatelessWidget {
  final ArtEntity artEntity;
  const SearchWrapper({Key? key, required this.artEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ArtDetailPage(artEntity: artEntity),
            ),
          );
        },
        child: Card(
          elevation: 3.0,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 25,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(artEntity.user.toString(),
                      style: TextStyle(fontSize: 20)),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  artEntity.image,
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
