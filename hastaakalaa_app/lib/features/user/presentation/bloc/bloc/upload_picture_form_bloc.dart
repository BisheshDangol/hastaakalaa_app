import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'upload_picture_form_event.dart';
part 'upload_picture_form_state.dart';

class UploadPictureFormBloc extends Bloc<UploadPictureFormEvent, UploadPictureFormState> {
  UploadPictureFormBloc() : super(UploadPictureFormInitial()) {
    on<UploadPictureFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
