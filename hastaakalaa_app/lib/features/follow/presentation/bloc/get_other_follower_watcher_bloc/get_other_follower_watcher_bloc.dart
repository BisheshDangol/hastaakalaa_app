import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/follow/domain/entities/follow_entity.dart';
import 'package:hastaakalaa_app/features/follow/domain/usecases/get_other_follower_list_usecase.dart';
import 'package:meta/meta.dart';

part 'get_other_follower_watcher_event.dart';
part 'get_other_follower_watcher_state.dart';
part 'get_other_follower_watcher_bloc.freezed.dart';

class GetOtherFollowerWatcherBloc
    extends Bloc<GetOtherFollowerWatcherEvent, GetOtherFollowerWatcherState> {
  final GetOtherFollowerListUsecase _getOtherFollowerListUsecase;
  GetOtherFollowerWatcherBloc(this._getOtherFollowerListUsecase)
      : super(GetOtherFollowerWatcherState.initial()) {
    on<GetOtherFollowerWatcherEvent>((event, emit) async {
      await event.map(retrieveFollowList: (_) async {
        emit(state.copyWith(isLoading: true, failureOrSuccess: null));

        final followList = await _getOtherFollowerListUsecase.call(state.id);

        emit(state.copyWith(
            failureOrSuccess: followList,
            isLoading: false,
            followList: followList.fold((l) => [], (r) => r)));
      }, changedId: (_ChangedId value) {
        emit(
          state.copyWith(
            id: value.id,
          ),
        );
      });
    });
  }
}
