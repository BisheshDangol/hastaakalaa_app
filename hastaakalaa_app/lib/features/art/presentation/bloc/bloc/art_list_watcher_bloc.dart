import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'art_list_watcher_event.dart';
part 'art_list_watcher_state.dart';
part 'art_list_watcher_bloc.freezed.dart';

class ArtListWatcherBloc extends Bloc<ArtListWatcherEvent, ArtListWatcherState> {
  ArtListWatcherBloc() : super(_Initial()) {
    on<ArtListWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
