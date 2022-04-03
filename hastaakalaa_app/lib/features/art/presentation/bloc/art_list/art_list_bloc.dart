import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:meta/meta.dart';

part 'art_list_bloc.freezed.dart';
part 'art_list_event.dart';
part 'art_list_state.dart';

class ArtListBloc extends Bloc<ArtListEvent, ArtListState> {
  ArtListBloc() : super(ArtListState.initial()) {
    on<ArtListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
