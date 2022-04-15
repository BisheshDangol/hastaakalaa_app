import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/follow/domain/entities/follow_entity.dart';
import 'package:meta/meta.dart';

part 'follow_form_event.dart';
part 'follow_form_state.dart';
part 'follow_form_bloc.freezed.dart';

class FollowFormBloc extends Bloc<FollowFormEvent, FollowFormState> {
  FollowFormBloc() : super(FollowFormState.initial()) {
    on<FollowFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
