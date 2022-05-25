import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/features/user/presentation/bloc/current_user_watcher_bloc/bloc/current_user_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/user/presentation/bloc/upload_picture_form_bloc/upload_picture_form_bloc.dart';
import 'package:hastaakalaa_app/injection_container.dart';
import 'package:image_picker/image_picker.dart';

class UploadPicturePage extends StatelessWidget {
  const UploadPicturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<UploadPictureFormBloc>(),
      child: BlocConsumer<UploadPictureFormBloc, UploadPictureFormState>(
        listener: (context, state) {
          state.failureOrSuccess?.fold((l) => null, (r) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Sucessfully Updated')));
            context.read<CurrentUserWatcherBloc>()
              ..add(CurrentUserWatcherEvent.retrieveUserList());
          });
        },
        builder: (context, state) => Scaffold(
          body: SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: Text('Change Profile Picture'),
                centerTitle: true,
              ),
              body: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Form(
                  autovalidateMode: AutovalidateMode.always,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        PickImage(),
                        SizedBox(height: 10.0),
                        SubmitButton()
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 246, 120, 56)),
        onPressed: () {
          context
              .read<UploadPictureFormBloc>()
              .add(UploadPictureFormEvent.pressedCreate());
          context.read<CurrentUserWatcherBloc>()
            ..add(CurrentUserWatcherEvent.retrieveUserList());
          Navigator.pop(context);
        },
        child: Text('Submit', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

class PickImage extends StatefulWidget {
  PickImage({Key? key}) : super(key: key);

  @override
  State<PickImage> createState() => _PickImageState();
}

class _PickImageState extends State<PickImage> {
  File? _image;

  Future getImage() async {
    try {
      final _image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (_image == null) {
        return;
      }
      final File imageTemp = File(_image.path);
      setState(() {
        this._image = imageTemp;
      });
      context
          .read<UploadPictureFormBloc>()
          .add(UploadPictureFormEvent.changedImage(image: imageTemp));
    } on PlatformException catch (e) {
      print('Failed to pick image ${e}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color.fromRGBO(101, 101, 107, 1)),
          ),
          onPressed: () {
            getImage();
          },
          child: Text('Pick Image'),
        ),
        SizedBox(
          height: 15.0,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(border: Border.all()),
          child: _image != null
              ? Image.file(_image!)
              : Center(
                  child: Text(
                    'No image Selected',
                  ),
                ),
        ),
      ],
    );
  }
}
