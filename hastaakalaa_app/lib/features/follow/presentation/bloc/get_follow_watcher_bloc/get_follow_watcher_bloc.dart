import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/follow/domain/entities/follow_entity.dart';
import 'package:meta/meta.dart';

part 'get_follow_watcher_event.dart';
part 'get_follow_watcher_state.dart';
part 'get_follow_watcher_bloc.freezed.dart';

class GetFollowWatcherBloc
    extends Bloc<GetFollowWatcherEvent, GetFollowWatcherState> {
  GetFollowWatcherBloc() : super((GetFollowWatcherState.initial())) {
    on<GetFollowWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
