import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/test_screens/search_page.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';

class CardWrapper extends StatelessWidget {
  final ArtEntity artEntity;
  const CardWrapper({Key? key, required this.artEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height / 1.7,
      // margin: EdgeInsets.all(10.0),
      child: Container(
        // height: MediaQuery.of(context).size.height / 10,
        width: MediaQuery.of(context).size.width,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SearchPage(),
              ),
            );
          },
          child: Card(
            elevation: 3.0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 25,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(artEntity.title, style: TextStyle(fontSize: 20)),
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    artEntity.image,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
