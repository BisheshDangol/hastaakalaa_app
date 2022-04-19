import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/core/wrapper/comment_wrapper.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/comment/presentation/bloc/comment_watcher_bloc/comment_watcher_bloc.dart';
import '../../../../injection_container.dart';

class CommentPage extends StatelessWidget {
  final ArtEntity artEntity;
  const CommentPage({Key? key, required this.artEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CommentWatcherBloc>()
        ..add(CommentWatcherEvent.retrieveCommentList(id: artEntity.id)),
      child: Scaffold(
        backgroundColor: Color(0xFFEDF0F6),
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
    return BlocBuilder<CommentWatcherBloc, CommentWatcherState>(
        builder: (context, state) {
      return state.failureOrSuccess?.fold((l) => null, (r) {
            return Expanded(
              child: ListView.builder(
                itemCount: state.commentList?.length,
                itemBuilder: (context, index) =>
                    CommentWrapper(commentEntity: state.commentList![index]),
              ),
            );
          }) ??
          Container();
    });
  }
}
