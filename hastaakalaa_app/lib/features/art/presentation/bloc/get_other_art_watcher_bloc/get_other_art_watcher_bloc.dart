import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/get_other_post_usecase.dart';
import 'package:meta/meta.dart';

part 'get_other_art_watcher_event.dart';
part 'get_other_art_watcher_state.dart';
part 'get_other_art_watcher_bloc.freezed.dart';

class GetOtherArtWatcherBloc
    extends Bloc<GetOtherArtWatcherEvent, GetOtherArtWatcherState> {
  final GetOtherPostUsecase _getOtherPostUsecase;
  GetOtherArtWatcherBloc(this._getOtherPostUsecase)
      : super(GetOtherArtWatcherState.initial()) {
    on<GetOtherArtWatcherEvent>((event, emit) async {
      await event.map(changedKeyword: (_ChangedKeyword value) async {
        emit(state.copyWith(isLoading: true, failureOrSuccess: null));

        final artList = await _getOtherPostUsecase.call(value.id);

        emit(state.copyWith(
            failureOrSuccess: artList,
            isLoading: false,
            artList: artList.fold((l) => [], (r) => r)));
      });
    });
  }
}
