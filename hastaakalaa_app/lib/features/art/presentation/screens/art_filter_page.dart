import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/core/wrapper/card_wrapper.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_filter_watcher_bloc/art_filter_watcher_bloc.dart';
import 'package:hastaakalaa_app/injection_container.dart';

class ArtFilterPage extends StatelessWidget {
  final String genreTitle;
  const ArtFilterPage({Key? key, required this.genreTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ArtFilterWatcherBloc>()
        ..add(ArtFilterWatcherEvent.retrieveArtList(genre: genreTitle)),
      child: Scaffold(
        backgroundColor: Color(0xFFEDF0F6),
        appBar: AppBar(
          title: Text('${genreTitle}'),
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
    return BlocBuilder<ArtFilterWatcherBloc, ArtFilterWatcherState>(
      builder: (context, state) {
        return state.failureOrSuccess?.fold((l) => null, (r) {
              return Expanded(
                child: ListView.builder(
                  itemCount: state.artList?.length,
                  itemBuilder: (context, index) =>
                      CardWrapper(artEntity: state.artList![index]),
                ),
              );
            }) ??
            Container();
      },
    );
  }
}
