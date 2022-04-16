import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/follow/domain/entities/follow_entity.dart';
import 'package:meta/meta.dart';

part 'get_other_following_watcher_event.dart';
part 'get_other_following_watcher_state.dart';
part 'get_other_following_watcher_bloc.freezed.dart';

class GetOtherFollowingWatcherBloc
    extends Bloc<GetOtherFollowingWatcherEvent, GetOtherFollowingWatcherState> {
  GetOtherFollowingWatcherBloc()
      : super(GetOtherFollowingWatcherState.initial()) {
    on<GetOtherFollowingWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
