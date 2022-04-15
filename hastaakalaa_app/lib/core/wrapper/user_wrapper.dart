import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_form_bloc/art_form_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_list_watcher_bloc/bloc/art_list_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/art_detail_page.dart';
import 'package:hastaakalaa_app/features/follow/presentation/bloc/get_follow_watcher_bloc/get_follow_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/user/domain/entities/user_entity.dart';

class UserWrapper extends StatelessWidget {
  final UserEntity userEntity;
  const UserWrapper({Key? key, required this.userEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(), color: Colors.grey),
      // color: Colors.grey[400],
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 60.0,
                height: 60.0,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.black45,
                        //     offset: Offset(0, 2),
                        //     blurRadius: 6.0,
                        //   ),
                        // ],
                        ),
                child: CircleAvatar(
                    backgroundColor: Colors.black45,
                    child: Text('${userEntity.id}',
                        style: TextStyle(fontSize: 30, color: Colors.white))),
              ),
            ),
            SizedBox(height: 10),
            Text('${userEntity.firstName} ${userEntity.lastName}',
                style: TextStyle(fontSize: 25, color: Colors.white)),
            SizedBox(height: 10),
            Text('${userEntity.email}'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "Followers",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    // Change here
                    FollowerNumber(),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Following",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "${userEntity.followedBy.length}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FollowerNumber extends StatelessWidget {
  const FollowerNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetFollowWatcherBloc, GetFollowWatcherState>(
      builder: ((context, state) {
        return state.failureOrSuccess?.fold((l) => null, (r) {
              return Text('${state.followList!.length}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ));
            }) ??
            Container();
      }),
    );
  }
}

class FollowingNumber extends StatelessWidget {
  const FollowingNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetFollowWatcherBloc, GetFollowWatcherState>(
      builder: ((context, state) {
        return state.failureOrSuccess?.fold((l) => null, (r) {
              return Text('${state.followList!.length}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ));
            }) ??
            Container();
      }),
    );
  }
}
