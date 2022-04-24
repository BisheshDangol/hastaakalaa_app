import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/delete_post_usecase.dart';

part 'delete_post_form_event.dart';
part 'delete_post_form_state.dart';
part 'delete_post_form_bloc.freezed.dart';

class DeletePostFormBloc
    extends Bloc<DeletePostFormEvent, DeletePostFormState> {
  final DeletePostUsecase _deletePostUsecase;
  DeletePostFormBloc(this._deletePostUsecase)
      : super(DeletePostFormState.initial()) {
    on<DeletePostFormEvent>((event, emit) async {
      await event.map(changedId: (_ChangedId value) {
        emit(
          state.copyWith(
            id: value.id,
          ),
        );
      }, pressedDelete: (_) async {
        emit(state.copyWith(isLoading: true, failureOrSuccess: null));

        Either<Failure, int>? failureOrSuccess;

        failureOrSuccess = await _deletePostUsecase.call(state.id);

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
