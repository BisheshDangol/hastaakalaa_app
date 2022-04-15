import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'follow_form_event.dart';
part 'follow_form_state.dart';

class FollowFormBloc extends Bloc<FollowFormEvent, FollowFormState> {
  FollowFormBloc() : super(FollowFormInitial()) {
    on<FollowFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
