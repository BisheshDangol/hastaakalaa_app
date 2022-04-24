import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/user/domain/entities/user_entity.dart';
import 'package:hastaakalaa_app/features/user/domain/usecases/get_current_user_usecase.dart';

part 'current_user_watcher_bloc.freezed.dart';
part 'current_user_watcher_event.dart';
part 'current_user_watcher_state.dart';

class CurrentUserWatcherBloc
    extends Bloc<CurrentUserWatcherEvent, CurrentUserWatcherState> {
  final GetCurrentUserUsecase _getCurrentUserUsecase;
  CurrentUserWatcherBloc(this._getCurrentUserUsecase)
      : super(CurrentUserWatcherState.initial()) {
    on<CurrentUserWatcherEvent>((event, emit) async {
      await event.map(retrieveUserList: (_) async {
        emit(CurrentUserWatcherState.loading());

        final userList = await _getCurrentUserUsecase.call(NoParams());

        userList.fold((l) => emit(CurrentUserWatcherState.failed(l)),
            (r) => emit(CurrentUserWatcherState.loaded(r)));
      });
    });
  }
}
