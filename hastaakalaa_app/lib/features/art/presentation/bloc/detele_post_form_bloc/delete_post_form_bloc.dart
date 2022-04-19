import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:meta/meta.dart';

part 'delete_post_form_event.dart';
part 'delete_post_form_state.dart';
part 'delete_post_form_bloc.freezed.dart';

class DeletePostFormBloc
    extends Bloc<DeletePostFormEvent, DeletePostFormState> {
  DeletePostFormBloc() : super(DeletePostFormState.initial()) {
    on<DeletePostFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
