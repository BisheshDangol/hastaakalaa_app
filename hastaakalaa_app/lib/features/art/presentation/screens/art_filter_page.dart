import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/core/wrapper/card_wrapper.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_filter_watcher_bloc/art_filter_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_form_bloc/art_form_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_list_watcher_bloc/bloc/art_list_watcher_bloc.dart';

import '../../../../injection_container.dart';

class ArtFilterPage extends StatelessWidget {
  const ArtFilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ArtFilterWatcherBloc>()
        ..add(ArtFilterWatcherEvent.retrieveArtList()),
      child: Scaffold(
        backgroundColor: Color(0xFFEDF0F6),
        appBar: AppBar(
          title: Text('Filter'),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              // PageBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}

// class PageBuilder extends StatelessWidget {
//   const PageBuilder({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ArtFormBloc, ArtFormState>(
//       builder: (context, state) {
//         return 
            
//           },
//     );
//   }
// }
