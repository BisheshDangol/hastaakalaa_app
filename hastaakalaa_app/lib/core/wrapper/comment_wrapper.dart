import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/features/comment/domain/entities/comment_entity.dart';
import 'package:intl/intl.dart';

class CommentWrapper extends StatelessWidget {
  final CommentEntity commentEntity;
  const CommentWrapper({Key? key, required this.commentEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime test = DateTime.parse(commentEntity.published);
    String formatter = DateFormat("MMMM d y, H:m").format(test);
    return Container(
      // height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 3.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                      backgroundColor: Color.fromARGB(150, 188, 88, 25),
                      radius: 25,
                      child: Text(commentEntity.user.toString(),
                          style: TextStyle(color: Colors.white))),
                ),
                SizedBox(
                  width: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(formatter,
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: Color.fromARGB(255, 109, 109, 109),
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Text(commentEntity.description.toString(),
                            style: TextStyle(fontSize: 17)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
