import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hastaakalaa_app/core/errors/failures.dart';
import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:meta/meta.dart';

part 'art_list_watcher_bloc.freezed.dart';
part 'art_list_watcher_event.dart';
part 'art_list_watcher_state.dart';

class ArtListWatcherBloc
    extends Bloc<ArtListWatcherEvent, ArtListWatcherState> {
  ArtListWatcherBloc() : super(ArtListWatcherState.initial()) {
    on<ArtListWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
