import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_search_watcher_bloc/art_search_watcher_bloc.dart';
import 'package:hastaakalaa_app/injection_container.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ArtSearchWatcherBloc>(),
      child: SafeArea(
        child: Column(
          children: [
            SearchPatientTextFormField(),
            SearchButton(),
            PageBuilder(),
          ],
        ),
      ),
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
                  (l) => CircularProgressIndicator(), (r) => ArtContainer(r)),
        ],
      ));
    });
  }
}

class ArtContainer extends StatelessWidget {
  final List<ArtEntity> artList;
  ArtContainer(this.artList);
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: artList.map((e) => Text(e.title)).toList(),
    );
  }
}

class SearchPatientTextFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Search',
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
