import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/core/end_points.dart';
import 'package:hastaakalaa_app/core/errors/exceptions.dart';
import 'package:hastaakalaa_app/core/wrapper/card_wrapper.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_list_watcher_bloc/bloc/art_list_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/bookmark_page.dart';
import 'package:hastaakalaa_app/features/comment/presentation/bloc/comment_form_bloc/comment_form_bloc.dart';
import 'package:hastaakalaa_app/features/payment/presentation/screens/payment_list_page.dart';
import 'package:hastaakalaa_app/features/user/data/models/user_model.dart';
import 'package:http/http.dart' as http;
import '../../../../injection_container.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    getCurrentUser();

    super.initState();
  }

  void getCurrentUser() async {
    String userToken =
        await TokenSharedPrefernces.instance.getTokenValue("token");
    Map<String, String> header = {
      "content-type": "application/json",
      "Authorization": "Token ${userToken}",
    };

    final response =
        await http.get(Uri.parse(getCurrentUserEndPoint), headers: header);

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List;
      final gottenUser = jsonData
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList();

      // debugPrint('${gottenUser[0].id}');

      // String idToken =
      //     await TokenSharedPrefernces.instance.getTokenValue("token");

      TokenSharedPrefernces.instance
          .setTokenValue("userId", gottenUser[0].id.toString());
    } else {
      throw ServerException();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<ArtListWatcherBloc>()
            ..add(ArtListWatcherEvent.retrieveDoctorList()),
        ),
        BlocProvider(
          create: (context) => sl<CommentFormBloc>(),
        ),
      ],
      child: Scaffold(
        backgroundColor: Color(0xFFEDF0F6),
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
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
                    Color.fromRGBO(180, 98, 30, 1),
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
              InkWell(
                onTap: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BookmarkPage()));
                },
                child: Container(
                  height: 50,
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      Icon(Icons.bookmark_added),
                      SizedBox(width: 20),
                      Text(
                        'My Bookmarks',
                        style: TextStyle(
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromRGBO(101, 101, 107, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaymentListPage()));
                },
                child: Container(
                  height: 50,
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      Icon(Icons.payment_sharp),
                      SizedBox(width: 20),
                      Text(
                        'My Payments',
                        style: TextStyle(
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromRGBO(101, 101, 107, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              InkWell(
                onTap: () async {
                  await Future.delayed(
                    const Duration(milliseconds: 500),
                  );
                  TokenSharedPrefernces.instance.removeToken("token");

                  Navigator.of(context, rootNavigator: true)
                      .popAndPushNamed('splash');
                },
                child: Container(
                  height: 50,
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      Icon(Icons.logout),
                      SizedBox(width: 20),
                      Text(
                        'Logout',
                        style: TextStyle(
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromRGBO(101, 101, 107, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
                child: ListView(
                  children:
                      e.artList.map((e) => CardWrapper(artEntity: e)).toList(),
                ),
              ),
            );
          },
          failed: (e) {
            return Container();
          },
        );
      },
    );
  }
}
