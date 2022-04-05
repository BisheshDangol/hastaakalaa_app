import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_form_bloc/art_form_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_list_watcher_bloc/bloc/art_list_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/art_detail_page.dart';
import 'package:hastaakalaa_app/features/user/domain/entities/user_entity.dart';

class UserWrapper extends StatelessWidget {
  final UserEntity userEntity;
  const UserWrapper({Key? key, required this.userEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width,
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
                Text(userEntity.id.toString(), style: TextStyle(fontSize: 20)),
              ],
            ),
          ],
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
                  icon: widget.art.likes.contains(1)
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

class BookmarkButton extends StatelessWidget {
  final ArtEntity art;
  const BookmarkButton({Key? key, required this.art}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    .add(ArtFormEvent.changedId(id: art.id));
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
