import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'delete_post_form_event.dart';
part 'delete_post_form_state.dart';

class DeletePostFormBloc extends Bloc<DeletePostFormEvent, DeletePostFormState> {
  DeletePostFormBloc() : super(DeletePostFormInitial()) {
    on<DeletePostFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
