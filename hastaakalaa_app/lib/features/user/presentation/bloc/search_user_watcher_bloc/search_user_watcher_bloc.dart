import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/application/invalid_input_failure.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:meta/meta.dart';

part 'search_user_watcher_event.dart';
part 'search_user_watcher_state.dart';
part 'search_user_watcher_bloc.freezed.dart';

class SearchUserWatcherBloc
    extends Bloc<SearchUserWatcherEvent, SearchUserWatcherState> {
  final InputConvert _inputConvert;
  SearchUserWatcherBloc(this._inputConvert)
      : super(SearchUserWatcherState.initial()) {
    on<SearchUserWatcherEvent>((event, emit) async {
      await event.map(
          changedKeyword: (_ChangedKeyword value) {
            emit(
              state.copyWith(
                keywordTitle: _inputConvert.notEmpty(
                  value: value.keyword,
                ),
              ),
            );
          },
          pressedSearch: (_PressedSearch value) {});
    });
  }
}
