import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/features/comment/domain/entities/comment_entity.dart';
import 'package:hastaakalaa_app/features/user/domain/entities/user_entity.dart';
import 'package:hastaakalaa_app/features/user/presentation/screens/search_detail_page.dart';
import 'package:hastaakalaa_app/features/user/presentation/screens/search_user_page.dart';
import 'package:hastaakalaa_app/features/user/presentation/screens/user_page.dart';

class SearchUserWrapper extends StatelessWidget {
  final UserEntity userEntity;
  const SearchUserWrapper({Key? key, required this.userEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SearchDetailPage(
                    user: userEntity,
                  ))),
      child: Container(
        // height: MediaQuery.of(context).size.height / 10,
        width: MediaQuery.of(context).size.width,
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
                  Text(userEntity.firstName.toString(),
                      style: TextStyle(fontSize: 20)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
