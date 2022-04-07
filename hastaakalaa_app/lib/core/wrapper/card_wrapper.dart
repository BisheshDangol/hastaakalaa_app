import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_form_bloc/art_form_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_list_watcher_bloc/bloc/art_list_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/art_detail_page.dart';

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
              color: Colors.white,
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
                          ),
                        ),
                        title: Text(
                          artEntity.user.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(artEntity.user.toString()),
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
        await TokenSharedPrefernces.instance.getTokenValue("userid");
    setState(() {
      user = userToken;
    });
  }

  @override
  Widget build(BuildContext context) {
    int? userToken = int.tryParse(user);
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
        }
      },
      builder: (context, state) {
        return BlocBuilder<ArtFormBloc, ArtFormState>(
          builder: (context, state) {
            return Column(
              children: [
                Text(
                  widget.art.likes.length == 0
                      ? ''
                      : widget.art.likes.length.toString(),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context
                        .read<ArtFormBloc>()
                        .add(ArtFormEvent.changedId(id: widget.art.id));
                    context.read<ArtFormBloc>().add(ArtFormEvent.pressedLike());
                  },
                  icon: widget.art.likes.contains(userToken)
                      ? Icon(Icons.favorite_sharp)
                      : Icon(Icons.favorite_border_sharp),
                  iconSize: 30,
                  color: Colors.red,
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
    int? userToken = int.tryParse(user);
    return BlocConsumer<ArtFormBloc, ArtFormState>(
      listener: (context, state) {
        String response = '';
        state.failureOrSuccess?.fold(
            (l) => null, (r) => debugPrint('thisisthevalue ${r.toString()}'));

        // if (response == 'Found') {
        //   CircularProgressIndicator();
        //   context.read<ArtListWatcherBloc>()
        //     ..add(ArtListWatcherEvent.retrieveDoctorList());
        // } else {
        //   context.read<ArtListWatcherBloc>()
        //     ..add(ArtListWatcherEvent.retrieveDoctorList());
        // }
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
              color: Colors.red,
            );
          },
        );
      },
    );
  }
}
