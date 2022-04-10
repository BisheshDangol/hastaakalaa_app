import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/core/wrapper/card_wrapper.dart';
import 'package:hastaakalaa_app/core/wrapper/search_wrapper.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_search_watcher_bloc/art_search_watcher_bloc.dart';
import 'package:hastaakalaa_app/injection_container.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ArtSearchWatcherBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Search'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Flexible(child: SearchPatientTextFormField(), flex: 3),
                      SearchButton(),
                    ],
                  ),
                ),
              ),
              FilterPage(),
              PageBuilder(),
            ],
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
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.red[300],
                  borderRadius: BorderRadius.circular(20)),
              height: 100,
              width: 100,
              margin: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  '${genreList[index]}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          }),
          itemCount: genreList.length,
        ));
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
                      (r) => ArtContainer(r)),
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
          borderSide: const BorderSide(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
        labelText: 'Search',
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
