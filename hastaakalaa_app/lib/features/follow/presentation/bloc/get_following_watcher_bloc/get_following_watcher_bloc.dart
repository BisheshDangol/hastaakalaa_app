import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/follow/domain/entities/follow_entity.dart';
import 'package:hastaakalaa_app/features/follow/domain/usecases/get_all_following_list_usecase.dart';

part 'get_following_watcher_event.dart';
part 'get_following_watcher_state.dart';
part 'get_following_watcher_bloc.freezed.dart';

class GetFollowingWatcherBloc
    extends Bloc<GetFollowingWatcherEvent, GetFollowingWatcherState> {
  final GetAllFollowingListUseCase _allFollowingListUseCase;
  GetFollowingWatcherBloc(this._allFollowingListUseCase)
      : super(GetFollowingWatcherState.initial()) {
    on<GetFollowingWatcherEvent>((event, emit) async {
      await event.map(retrieveFollowingList: (_) async {
        emit(state.copyWith(isLoading: true, failureOrSuccess: null));

        final followAllList = await _allFollowingListUseCase.call(NoParams());

        emit(state.copyWith(
            failureOrSuccess: followAllList,
            isLoading: false,
            followingList: followAllList.fold((l) => [], (r) => r)));
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
