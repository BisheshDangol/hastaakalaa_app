import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/core/wrapper/card_wrapper.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_bookmark_watcher_bloc/art_bookmark_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_list_watcher_bloc/bloc/art_list_watcher_bloc.dart';

import '../../../../injection_container.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ArtBookmarkWatcherBloc>()
        ..add(ArtBookmarkWatcherEvent.getArtList()),
      child: Scaffold(
        backgroundColor: Color(0xFFEDF0F6),
        appBar: AppBar(
          title: Text('My Bookmarks'),
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
      ),
    );
  }
}

class PageBuilder extends StatelessWidget {
  const PageBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtBookmarkWatcherBloc, ArtBookmarkWatcherState>(
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
                  context.read<ArtBookmarkWatcherBloc>()
                    ..add(ArtBookmarkWatcherEvent.getArtList());
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
