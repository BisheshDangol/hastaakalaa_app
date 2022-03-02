import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_search_watcher_bloc/art_search_watcher_bloc.dart';
import 'package:hastaakalaa_app/injection_container.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ArtSearchWatcherBloc>(),
      child: BlocBuilder<ArtSearchWatcherBloc, ArtSearchWatcherState>(
        builder: (context, state) => Scaffold(
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SearchPatientTextFormField(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
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

class AddNewPatientButton extends StatelessWidget {
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
