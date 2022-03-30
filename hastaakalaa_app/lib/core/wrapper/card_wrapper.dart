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
                    Text(artEntity.user['user_name'].toString(),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                            artEntity.likes.length == 0
                                ? ''
                                : artEntity.likes.length.toString(),
                            style: TextStyle(
                              fontSize: 18,
                            )),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_outline),
                          iconSize: 30,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bookmark_add_outlined),
                      iconSize: 30,
                      color: Colors.red,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
