import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/get_all_art_post_list_usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/like_post_usecase.dart';
import 'package:meta/meta.dart';

part 'art_list_watcher_bloc.freezed.dart';
part 'art_list_watcher_event.dart';
part 'art_list_watcher_state.dart';

class ArtListWatcherBloc
    extends Bloc<ArtListWatcherEvent, ArtListWatcherState> {
  final LikePostUsecase _likePostUsecase;
  final GetAllArtPostListUsecase _getAllArtPostListUsecase;
  ArtListWatcherBloc(this._likePostUsecase, this._getAllArtPostListUsecase)
      : super(ArtListWatcherState.initial()) {
    on<ArtListWatcherEvent>((event, emit) async {
      await event.map(
        retrieveArtList: (_) async {
          emit(state.copyWith(isLoading: true, failureOrSuccess: null));

          final artList = await _getAllArtPostListUsecase.call(NoParams());

          emit(state.copyWith(
              failureOrSuccess: artList,
              isLoading: false,
              artHistory: artList.fold((l) => [], (r) => r)));
        },
        pressedLike: (e) async {
          List<ArtEntity> temp;
          emit(state.copyWith(isLoading: true, failureOrSuccess: null));

          Either<Failure, String>? likeResponse;

          likeResponse = await _likePostUsecase.call(e.id);

          // if (likeResponse.isLeft()) {
          //   emit(state.copyWith(failureOrSuccess: state.failureOrSuccess));
          // } else {
          //   emit(state.copyWith(artHistory: ))
          // }
          likeResponse.fold(
              (l) => emit(
                  state.copyWith(failureOrSuccess: state.failureOrSuccess)),
              (r) {
            if (r.toLowerCase() == 'found') {
              temp = state.artHistory!.map((f) {
                if (f.id == e.id) {
                  List temp = f.likes;
                  List finalTemp;
                  if (f.likes.isEmpty) {
                    finalTemp = temp;
                  } else {
                    if (f.likes.contains(e.id)) {
                      temp.remove(e.id);
                      finalTemp = temp;
                    } else {
                      temp.add(e.id);
                      finalTemp = temp;
                    }
                  }
                  return ArtEntity(
                      id: f.id,
                      title: f.title,
                      user: f.user,
                      description: f.description,
                      forSale: f.forSale,
                      price: f.price,
                      image: f.image,
                      status: f.status,
                      likes: finalTemp);
                }
                return f;
              }).toList();
              emit(state.copyWith(artHistory: temp));
            } else {
              temp = state.artHistory!.map((f) {
                if (f.id == e.id) {
                  List temp = f.likes;
                  List finalTemp;

                  if (f.likes.isEmpty) {
                    temp.add(e.id);
                    finalTemp = temp;
                  } else {
                    if (f.likes.contains(e.id)) {
                      temp.remove(e.id);
                      finalTemp = temp;
                    } else {
                      temp.add(e.id);
                      finalTemp = temp;
                    }
                  }
                  return ArtEntity(
                    id: f.id,
                    title: f.title,
                    user: f.user,
                    description: f.description,
                    forSale: f.forSale,
                    price: f.price,
                    image: f.image,
                    status: f.status,
                    likes: finalTemp,
                  );
                }
                return f;
              }).toList();
              emit(state.copyWith(artHistory: temp));
            }
          });
        },
      );
    });
  }
}
