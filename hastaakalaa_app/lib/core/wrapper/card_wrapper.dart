import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/core/test_screens/search_page.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/bloc/art_form_bloc.dart';

class CardWrapper extends StatelessWidget {
  final ArtEntity artEntity;
  const CardWrapper({Key? key, required this.artEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height / 1.7,
      // margin: EdgeInsets.all(10.0),
      child: Container(
        // height: MediaQuery.of(context).size.height / 10,
        width: MediaQuery.of(context).size.width,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SearchPage(),
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
                    Text(artEntity.user['user_name'].toString(),
                        style: TextStyle(fontSize: 20)),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    artEntity.image,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LikeButton(art: artEntity),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bookmark_add_outlined),
                      iconSize: 30,
                      color: Colors.red,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LikeButton extends StatelessWidget {
  final ArtEntity art;
  const LikeButton({Key? key, required this.art}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ArtFormBloc, ArtFormState>(
      listener: (context, state) {
        final snackBar = SnackBar(content: const Text('Yay! A SnackBar!'));
        state.failureOrSuccess?.fold((l) => null,
            (r) => ScaffoldMessenger.of(context).showSnackBar(snackBar));
      },
      builder: (context, state) {
        return BlocBuilder<ArtFormBloc, ArtFormState>(
          builder: (context, state) {
            return Column(
              children: [
                Text(
                  art.likes.length == 0 ? '' : art.likes.length.toString(),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context
                        .read<ArtFormBloc>()
                        .add(ArtFormEvent.changedId(id: art.id));
                    context.read<ArtFormBloc>().add(ArtFormEvent.pressedLike());
                  },
                  icon: Icon(Icons.favorite_outline),
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
