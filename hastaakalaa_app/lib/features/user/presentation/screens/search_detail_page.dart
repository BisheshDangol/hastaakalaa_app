import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/core/wrapper/card_wrapper.dart';
import 'package:hastaakalaa_app/core/wrapper/grid_wrapper.dart';
import 'package:hastaakalaa_app/core/wrapper/user_wrapper.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_list_watcher_bloc/bloc/art_list_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/retrieve_art_watcher_bloc/retrieve_art_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/bookmark_page.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/buy_art_page.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/sell_art_page.dart';
import 'package:hastaakalaa_app/features/follow/presentation/bloc/follow_form_bloc/follow_form_bloc.dart';
import 'package:hastaakalaa_app/features/follow/presentation/bloc/get_follow_watcher_bloc/get_follow_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/follow/presentation/bloc/get_following_watcher_bloc/get_following_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/user/presentation/bloc/current_user_watcher_bloc/bloc/current_user_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/user/presentation/screens/search_user_page.dart';

import '../../../../injection_container.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<CurrentUserWatcherBloc>()
            ..add(CurrentUserWatcherEvent.retrieveUserList()),
        ),
        BlocProvider(
          create: (context) => sl<RetrieveArtWatcherBloc>()
            ..add(RetrieveArtWatcherEvent.retrieveArtList()),
        ),
        BlocProvider(
          create: (context) => sl<GetFollowWatcherBloc>()
            ..add(GetFollowWatcherEvent.retrieveFollowList()),
        ),
        BlocProvider(
          create: (context) => sl<GetFollowingWatcherBloc>()
            ..add(GetFollowingWatcherEvent.retrieveFollowingList()),
        ),
        BlocProvider(create: (context) => sl<FollowFormBloc>()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              PageBuilder(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.0),
                decoration: BoxDecoration(color: Colors.green[100]),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Text(
                      'Posts',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              UserPostPageBuilder(),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.red,
                    Colors.white,
                  ],
                )),
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Hastaakalaa',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Text('Bookmark'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BookmarkPage()));
                },
              ),
              ListTile(
                title: Text('Buy Art'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BuyArtPage()));
                },
              ),
              ListTile(
                title: Text('Sell Art'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SellArtPage()));
                },
              ),
              ListTile(
                title: Text('Search User'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchUserPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserPostPageBuilder extends StatelessWidget {
  const UserPostPageBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtListWatcherBloc, ArtListWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) {
            return Container();
          },
          loading: (_) => CircularProgressIndicator(),
          loaded: (e) {
            return Expanded(
                child: RefreshIndicator(
              onRefresh: () async {
                context.read<ArtListWatcherBloc>()
                  ..add(ArtListWatcherEvent.retrieveDoctorList());
              },
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 3.0,
                crossAxisSpacing: 3.0,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                children:
                    e.artList.map((e) => GridWrapper(artEntity: e)).toList(),
              ),
            ));
          },
          failed: (e) {
            return Container();
          },
        );
      },
    );
  }
}

class PageBuilder extends StatelessWidget {
  const PageBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentUserWatcherBloc, CurrentUserWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) {
            return Container();
          },
          loading: (_) => CircularProgressIndicator(),
          loaded: (e) {
            return Expanded(
                child: RefreshIndicator(
              onRefresh: () async {
                context.read<CurrentUserWatcherBloc>()
                  ..add(CurrentUserWatcherEvent.retrieveUserList());
              },
              child: ListView(
                children:
                    e.userList.map((e) => UserWrapper(userEntity: e)).toList(),
              ),
            ));
          },
          failed: (e) {
            return Container();
          },
        );
      },
    );
  }
}
