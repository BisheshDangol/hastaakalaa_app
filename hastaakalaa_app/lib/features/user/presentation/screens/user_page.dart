import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/core/wrapper/card_wrapper.dart';
import 'package:hastaakalaa_app/core/wrapper/user_wrapper.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_list_watcher_bloc/bloc/art_list_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/user/presentation/bloc/current_user_watcher_bloc/current_user_watcher_bloc.dart';

import '../../../../injection_container.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CurrentUserWatcherBloc>()
        ..add(CurrentUserWatcherEvent.retrieveUserList()),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              PageBuilder(),
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
                title: Text('Log out'),
                onTap: () async {
                  await Future.delayed(
                    const Duration(milliseconds: 500),
                  );
                  TokenSharedPrefernces.instance.removeToken("token");

                  Navigator.of(context, rootNavigator: true)
                      .popAndPushNamed('splash');
                },
              )
            ],
          ),
        ),
      ),
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
