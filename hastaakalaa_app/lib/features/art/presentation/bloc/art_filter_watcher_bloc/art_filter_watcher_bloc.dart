import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:meta/meta.dart';

part 'art_filter_watcher_event.dart';
part 'art_filter_watcher_state.dart';
part 'art_filter_watcher_bloc.freezed.dart';

class ArtFilterWatcherBloc
    extends Bloc<ArtFilterWatcherEvent, ArtFilterWatcherState> {
  ArtFilterWatcherBloc() : super(ArtFilterWatcherState.initial()) {
    on<ArtFilterWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
