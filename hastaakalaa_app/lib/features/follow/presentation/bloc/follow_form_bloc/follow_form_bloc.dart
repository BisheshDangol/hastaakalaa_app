import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/follow/domain/entities/follow_entity.dart';
import 'package:hastaakalaa_app/features/follow/domain/usecases/post_follow_usecase.dart';
import 'package:meta/meta.dart';

part 'follow_form_event.dart';
part 'follow_form_state.dart';
part 'follow_form_bloc.freezed.dart';

class FollowFormBloc extends Bloc<FollowFormEvent, FollowFormState> {
  final PostFollowUsecase _postFollowUsecase;
  FollowFormBloc(this._postFollowUsecase) : super(FollowFormState.initial()) {
    on<FollowFormEvent>((event, emit) async {
      await event.map(changedId: (_ChangedId value) {
        emit(
          state.copyWith(
            id: value.id,
          ),
        );
      }, pressedFollow: (_) async {
        emit(state.copyWith(isLoading: true, failureOrSuccess: null));

        Either<Failure, String>? failureOrSuccess;

        failureOrSuccess = await _postFollowUsecase.call(state.id);

        emit(
          state.copyWith(
            isLoading: false,
            failureOrSuccess: failureOrSuccess,
            showErrors: true,
          ),
        );
      });
    });
  }
}
