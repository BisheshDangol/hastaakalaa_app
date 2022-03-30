import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/core/usecase.dart';
import 'package:hastaakalaa_app/features/user/domain/entities/user_entity.dart';
import 'package:hastaakalaa_app/features/user/domain/usecases/get_all_user_usecase.dart';
import 'package:meta/meta.dart';

part 'user_list_watcher_bloc.freezed.dart';
part 'user_list_watcher_event.dart';
part 'user_list_watcher_state.dart';

class UserListWatcherBloc
    extends Bloc<UserListWatcherEvent, UserListWatcherState> {
  final GetAllUserUsecase _getAllUserUsecase;
  UserListWatcherBloc(this._getAllUserUsecase)
      : super(UserListWatcherState.initial()) {
    on<UserListWatcherEvent>((event, emit) {
      event.map(retrieveUserList: (_) async {
        emit(UserListWatcherState.loading());

        final userList = await _getAllUserUsecase.call(NoParams());

        userList.fold((l) => emit(UserListWatcherState.failed(l)),
            (r) => emit(UserListWatcherState.loaded(r)));
      });
    });
  }
}
