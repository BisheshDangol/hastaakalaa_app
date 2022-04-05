import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_form_bloc/art_form_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_list_watcher_bloc/bloc/art_list_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/art_detail_page.dart';

class CardWrapper extends StatefulWidget {
  final ArtEntity artEntity;
  const CardWrapper({Key? key, required this.artEntity}) : super(key: key);

  @override
  State<CardWrapper> createState() => _CardWrapperState();
}

class _CardWrapperState extends State<CardWrapper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ArtDetailPage(artEntity: widget.artEntity),
            ),
          );
        },
        child: Card(
          elevation: 3.0,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 25,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(widget.artEntity.user.toString(),
                      style: TextStyle(fontSize: 20)),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  widget.artEntity.image,
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  LikeButton(art: widget.artEntity),
                  BookmarkButton(art: widget.artEntity)
                ],
              )
            ],
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
