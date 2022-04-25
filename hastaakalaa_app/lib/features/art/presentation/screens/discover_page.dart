import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/core/wrapper/search_wrapper.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_search_watcher_bloc/art_search_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/art_filter_page.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/bookmark_page.dart';
import 'package:hastaakalaa_app/features/payment/presentation/screens/payment_list_page.dart';
import 'package:hastaakalaa_app/features/user/presentation/screens/search_user_page.dart';
import 'package:hastaakalaa_app/injection_container.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: BlocProvider(
        create: (_) => sl<ArtSearchWatcherBloc>(),
        child: Scaffold(
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
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookmarkPage()));
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('Search'),
            centerTitle: true,
          ),
          body: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: AppBar(
                    bottom: TabBar(
                      tabs: [
                        Tab(
                          text: 'Search By Art',
                        ),
                        Tab(
                          text: 'Search By Artist',
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                children: [
                                  Flexible(
                                      child: SearchPatientTextFormField(),
                                      flex: 3),
                                  SearchButton(),
                                ],
                              ),
                            ),
                          ),
                          FilterPage(),
                          PageBuilder(),
                        ],
                      ),
                      SearchUserPage(),
                    ],
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

class FilterPage extends StatelessWidget {
  FilterPage({Key? key}) : super(key: key);

  final List<String> genreList = [
    'abstract',
    'pop',
    'realism',
    'potrait',
    'landscape',
    'mithila',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ArtFilterPage(genreTitle: genreList[index])));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 155, 155),
                  borderRadius: BorderRadius.circular(20)),
              height: 100,
              width: 100,
              margin: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  '${genreList[index]}',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        }),
        itemCount: genreList.length,
      ),
    );
  }
}

class FilterContainer extends StatelessWidget {
  final List<ArtEntity> artList;
  const FilterContainer({Key? key, required this.artList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: artList
          .map((e) => SearchWrapper(
                artEntity: e,
              ))
          .toList(),
    );
  }
}

class PageBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtSearchWatcherBloc, ArtSearchWatcherState>(
      builder: (context, state) {
        return Expanded(
          child: ListView(
            children: [
              state.failureOrSuccess == null
                  ? Container()
                  : state.failureOrSuccess!.fold(
                      (l) => CircularProgressIndicator(),
                      (r) => ArtContainer(r))
            ],
          ),
        );
      },
    );
  }
}

class ArtContainer extends StatelessWidget {
  final List<ArtEntity> artList;
  ArtContainer(this.artList);
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: artList
          .map((e) => SearchWrapper(
                artEntity: e,
              ))
          .toList(),
    );
  }
}

class SearchPatientTextFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromRGBO(180, 98, 30, 1), width: 2.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
        labelText: 'Search',
        labelStyle: TextStyle(color: Color.fromRGBO(180, 98, 30, 1)),
        errorStyle: TextStyle(fontSize: 13),
      ),
      onChanged: (value) {
        context
            .read<ArtSearchWatcherBloc>()
            .add(ArtSearchWatcherEvent.changedKeyword(keyword: value));
      },
      validator: (_) => context.read<ArtSearchWatcherBloc>().state.showErrors
          ? context
              .read<ArtSearchWatcherBloc>()
              .state
              .keywordTitle
              .fold((e) => e.msg.toString(), (_) => null)
          : null,
    );
  }
}

class SearchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context
            .read<ArtSearchWatcherBloc>()
            .add(ArtSearchWatcherEvent.pressedSearch());
      },
      icon: Icon(Icons.search),
    );
  }
}
