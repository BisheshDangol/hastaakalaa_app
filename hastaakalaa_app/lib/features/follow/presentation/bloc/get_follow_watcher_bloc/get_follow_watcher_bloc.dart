import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/follow/domain/entities/follow_entity.dart';
import 'package:hastaakalaa_app/features/follow/domain/usecases/get_all_follower_list_usecase.dart';

part 'get_follow_watcher_event.dart';
part 'get_follow_watcher_state.dart';
part 'get_follow_watcher_bloc.freezed.dart';

class GetFollowWatcherBloc
    extends Bloc<GetFollowWatcherEvent, GetFollowWatcherState> {
  final GetAllFollowerListUseCase _getAllFollowerList;
  GetFollowWatcherBloc(this._getAllFollowerList)
      : super((GetFollowWatcherState.initial())) {
    on<GetFollowWatcherEvent>((event, emit) async {
      await event.map(retrieveFollowList: (_) async {
        emit(state.copyWith(isLoading: true, failureOrSuccess: null));

        final followAllList = await _getAllFollowerList.call(NoParams());

        emit(state.copyWith(
            failureOrSuccess: followAllList,
            isLoading: false,
            followList: followAllList.fold((l) => [], (r) => r)));
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
