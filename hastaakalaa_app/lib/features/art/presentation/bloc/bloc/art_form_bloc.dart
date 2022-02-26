import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'art_form_event.dart';
part 'art_form_state.dart';
part 'art_form_bloc.freezed.dart';

class ArtFormBloc extends Bloc<ArtFormEvent, ArtFormState> {
  ArtFormBloc() : super(_Initial()) {
    on<ArtFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
