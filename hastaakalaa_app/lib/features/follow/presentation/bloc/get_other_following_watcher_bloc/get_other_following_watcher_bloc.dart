import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/follow/domain/entities/follow_entity.dart';
import 'package:hastaakalaa_app/features/follow/domain/usecases/get_all_following_list_usecase.dart';
import 'package:hastaakalaa_app/features/follow/domain/usecases/get_other_following_list_usecase.dart';
import 'package:meta/meta.dart';

part 'get_other_following_watcher_event.dart';
part 'get_other_following_watcher_state.dart';
part 'get_other_following_watcher_bloc.freezed.dart';

class GetOtherFollowingWatcherBloc
    extends Bloc<GetOtherFollowingWatcherEvent, GetOtherFollowingWatcherState> {
  final GetOtherFollowingListUsecase _getOtherFollowingListUsecase;
  GetOtherFollowingWatcherBloc(this._getOtherFollowingListUsecase)
      : super(GetOtherFollowingWatcherState.initial()) {
    on<GetOtherFollowingWatcherEvent>((event, emit) async {
      await event.map(changedId: (_ChangedId value) {
        emit(
          state.copyWith(
            id: value.id,
          ),
        );
      }, retrieveFollowList: (_RetrieveFollowList value) async {
        emit(state.copyWith(isLoading: true, failureOrSuccess: null));

        final followList = await _getOtherFollowingListUsecase.call(value.id);

        emit(state.copyWith(
            failureOrSuccess: followList,
            isLoading: false,
            followList: followList.fold((l) => [], (r) => r)));
      });
    });
  }
}
