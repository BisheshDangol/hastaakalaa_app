import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_bookmark_watcher_bloc/art_bookmark_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_form_bloc/art_form_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_list_watcher_bloc/bloc/art_list_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/art_detail_page.dart';
import 'package:hastaakalaa_app/features/comment/presentation/bloc/comment_form_bloc/comment_form_bloc.dart';
import 'package:hastaakalaa_app/injection_container.dart';

class CardWrapper extends StatelessWidget {
  final ArtEntity artEntity;
  const CardWrapper({Key? key, required this.artEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ArtDetailPage(artEntity: artEntity),
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            width: double.infinity,
            height: 500.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(232, 232, 228, 1),
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45,
                                offset: Offset(0, 2),
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                              backgroundColor: Colors.black45,
                              child: Text(artEntity.user.toString())),
                        ),
                        title: Text(
                          artEntity.title.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(artEntity.status.toString()),
                        trailing: IconButton(
                          icon: Icon(Icons.more_horiz),
                          color: Colors.black,
                          onPressed: () => print('More'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        width: double.infinity,
                        height: 340.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Image.network(
                            artEntity.image,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    LikeButton(
                                      art: artEntity,
                                    )
                                  ],
                                ),
                                SizedBox(width: 20.0),
                                Row(
                                  children: [
                                    CommentButton(
                                      art: artEntity,
                                    )
                                  ],
                                ),
                                SizedBox(width: 20.0),
                              ],
                            ),
                            BookmarkButton(
                              art: artEntity,
                            )
                          ],
                        ),
                      )
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

class LikeButton extends StatefulWidget {
  final ArtEntity art;

  const LikeButton({Key? key, required this.art}) : super(key: key);

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  String user = '';
  @override
  void initState() {
    _getUserId();
    super.initState();
  }

  _getUserId() async {
    String userToken =
        await TokenSharedPrefernces.instance.getTokenValue("userId");
    setState(() {
      user = userToken;
      debugPrint(user);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ArtFormBloc, ArtFormState>(
      listener: (context, state) {
        String response = '';
        state.failureOrSuccess
            ?.fold((l) => null, (r) => response = r.toString());
        if (response == 'Found') {
          CircularProgressIndicator();
          context.read<ArtListWatcherBloc>()
            ..add(ArtListWatcherEvent.retrieveDoctorList());
        } else {
          context.read<ArtListWatcherBloc>()
            ..add(ArtListWatcherEvent.retrieveDoctorList());
          // debugPrint('This is the usertoken${userToken}');
        }
      },
      builder: (context, state) {
        return BlocBuilder<ArtFormBloc, ArtFormState>(
          builder: (context, state) {
            return Row(
              children: [
                IconButton(
                  onPressed: () {
                    context
                        .read<ArtFormBloc>()
                        .add(ArtFormEvent.changedId(id: widget.art.id));
                    context.read<ArtFormBloc>().add(ArtFormEvent.pressedLike());
                  },
                  icon: widget.art.likes.contains(int.tryParse(user))
                      ? Icon(Icons.favorite_sharp)
                      : Icon(Icons.favorite_border_sharp),
                  iconSize: 30,
                  color: Color.fromRGBO(139, 147, 144, 1),
                ),
                Text(
                  widget.art.likes.length == 0
                      ? ''
                      : widget.art.likes.length.toString(),
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class BookmarkButton extends StatefulWidget {
  final ArtEntity art;
  const BookmarkButton({Key? key, required this.art}) : super(key: key);

  @override
  State<BookmarkButton> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  String user = '';
  @override
  void initState() {
    _getUserId();
    super.initState();
  }

  _getUserId() async {
    String userToken =
        await TokenSharedPrefernces.instance.getTokenValue("userid");
    setState(() {
      user = userToken;
    });
  }

  @override
  Widget build(BuildContext context) {
    // int? userToken = int.tryParse(user);
    return BlocConsumer<ArtFormBloc, ArtFormState>(
      listener: (context, state) {
        String response = '';
        // state.failureOrSuccess?.fold((l) => null, (r) {
        //   const sucessSnackBar = SnackBar(content: Text('Bookmark Added'));
        //   ScaffoldMessenger.of(context).showSnackBar(sucessSnackBar);
        // });

        if (response == 'Found') {
          CircularProgressIndicator();
          context.read<ArtListWatcherBloc>()
            ..add(ArtListWatcherEvent.retrieveDoctorList());
          const successsnackBar = SnackBar(
            content: Text('Bookmark Added'),
          );
          ScaffoldMessenger.of(context).showSnackBar(successsnackBar);
        } else {
          context.read<ArtBookmarkWatcherBloc>()
            ..add(ArtBookmarkWatcherEvent.getArtList());
          const successsnackBar = SnackBar(
            content: Text('Bookmark Added'),
          );
          ScaffoldMessenger.of(context).showSnackBar(successsnackBar);
        }
      },
      builder: (context, state) {
        return BlocBuilder<ArtFormBloc, ArtFormState>(
          builder: (context, state) {
            return IconButton(
              onPressed: () {
                context
                    .read<ArtFormBloc>()
                    .add(ArtFormEvent.changedId(id: widget.art.id));
                context.read<ArtFormBloc>().add(ArtFormEvent.pressedBookmark());
              },
              icon: Icon(Icons.bookmark_add),
              iconSize: 30,
              color: Color.fromRGBO(139, 147, 144, 1),
            );
          },
        );
      },
    );
  }
}

class CommentButton extends StatelessWidget {
  final ArtEntity art;
  const CommentButton({Key? key, required this.art}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CommentFormBloc>(),
      child: IconButton(
        icon: Icon(
          Icons.comment_sharp,
        ),
        iconSize: 30,
        color: Color.fromRGBO(139, 147, 144, 1),
        onPressed: () {
          showModalBottomSheet<void>(
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return SingleChildScrollView(
                child: Container(
                  height: 400,
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text('Add Comment'),
                        CommentTextFormField(),
                        SizedBox(height: 10),
                        AddCommentButton(artEntity: art),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CommentTextFormField extends StatelessWidget {
  CommentTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
        hintText: 'Enter comment',
        labelText: 'Comment',
        errorStyle: TextStyle(fontSize: 13),
      ),
      onChanged: (value) {
        context
            .read<CommentFormBloc>()
            .add(CommentFormEvent.changedDescription(description: value));
      },
      validator: (_) => context.read<CommentFormBloc>().state.showErrors
          ? context
              .read<CommentFormBloc>()
              .state
              .description
              .fold((e) => e.msg.toString(), (_) => null)
          : null,
    );
  }
}

class AddCommentButton extends StatelessWidget {
  final ArtEntity artEntity;
  AddCommentButton({Key? key, required this.artEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        style:
            ElevatedButton.styleFrom(primary: Color.fromRGBO(139, 147, 144, 1)),
        onPressed: () {
          context
              .read<CommentFormBloc>()
              .add(CommentFormEvent.changedId(id: artEntity.id));
          context.read<CommentFormBloc>().add(CommentFormEvent.pressedCreate());
        },
        child: Text('Send', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
