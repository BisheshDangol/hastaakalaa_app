import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/features/follow/presentation/bloc/follow_form_bloc/follow_form_bloc.dart';
import 'package:hastaakalaa_app/features/follow/presentation/bloc/get_follow_watcher_bloc/get_follow_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/follow/presentation/bloc/get_following_watcher_bloc/get_following_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/follow/presentation/bloc/get_other_follower_watcher_bloc/get_other_follower_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/follow/presentation/bloc/get_other_following_watcher_bloc/get_other_following_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/user/domain/entities/user_entity.dart';

class UserDetailsWrapper extends StatefulWidget {
  final UserEntity userEntity;
  const UserDetailsWrapper({Key? key, required this.userEntity})
      : super(key: key);

  @override
  State<UserDetailsWrapper> createState() => _UserDetailsWrapper();
}

class _UserDetailsWrapper extends State<UserDetailsWrapper> {
  String user = '';
  @override
  void initState() {
    _getUserId();
    super.initState();
  }

  _getUserId() async {
    String userToken =
        await TokenSharedPrefernces.instance.getTokenValue("userId");
    setState(() {
      user = userToken;
      debugPrint(user);
    });
  }

  @override
  Widget build(BuildContext context) {
    int? userNumber = int.tryParse(user);
    return Container(
      decoration: BoxDecoration(border: Border.all(), color: Colors.grey),
      // color: Colors.grey[400],
      height: 300,
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
                    child: Text('${widget.userEntity.id}',
                        style: TextStyle(fontSize: 30, color: Colors.white))),
              ),
            ),
            SizedBox(height: 10),
            Text('${widget.userEntity.firstName} ${widget.userEntity.lastName}',
                style: TextStyle(fontSize: 25, color: Colors.white)),
            SizedBox(height: 10),
            Text('${widget.userEntity.email}'),
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
                    FollowingNumber()
                  ],
                )
              ],
            ),
            userNumber == widget.userEntity.id
                ? SizedBox(height: 0)
                : FollowButton(user: widget.userEntity)
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
    return BlocBuilder<GetOtherFollowerWatcherBloc,
        GetOtherFollowerWatcherState>(
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
    return BlocBuilder<GetOtherFollowingWatcherBloc,
        GetOtherFollowingWatcherState>(
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

class FollowButton extends StatefulWidget {
  final UserEntity user;

  const FollowButton({Key? key, required this.user}) : super(key: key);

  @override
  State<FollowButton> createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  String user = '';
  @override
  void initState() {
    _getUserId();
    super.initState();
  }

  _getUserId() async {
    String userToken =
        await TokenSharedPrefernces.instance.getTokenValue("userId");
    setState(() {
      user = userToken;
      debugPrint(user);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FollowFormBloc, FollowFormState>(
      listener: (context, state) {
        String response = '';
        state.failureOrSuccess
            ?.fold((l) => null, (r) => response = r.toString());
        if (response == 'Found') {
          CircularProgressIndicator();
          context.read<GetFollowWatcherBloc>()
            ..add(GetFollowWatcherEvent.retrieveFollowList());
        } else {
          context.read<GetFollowWatcherBloc>()
            ..add(GetFollowWatcherEvent.retrieveFollowList());
          context.read<GetOtherFollowerWatcherBloc>()
            ..add(GetOtherFollowerWatcherEvent.retrieveFollowList(
                id: widget.user.id));
          // debugPrint('This is the usertoken${userToken}');
        }
      },
      builder: (context, state) {
        return BlocBuilder<FollowFormBloc, FollowFormState>(
          builder: (context, state) {
            return Row(
              children: [
                IconButton(
                  onPressed: () {
                    context
                        .read<FollowFormBloc>()
                        .add(FollowFormEvent.changedId(id: widget.user.id));
                    context
                        .read<FollowFormBloc>()
                        .add(FollowFormEvent.pressedFollow(id: widget.user.id));
                  },
                  icon: Icon(Icons.person_add),
                  iconSize: 30,
                  color: Colors.red,
                ),
              ],
            );
          },
        );
      },
    );
  }
}
