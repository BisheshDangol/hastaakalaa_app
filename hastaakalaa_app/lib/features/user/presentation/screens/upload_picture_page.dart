import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/features/user/presentation/bloc/upload_picture_form_bloc/upload_picture_form_bloc.dart';
import 'package:hastaakalaa_app/injection_container.dart';
import 'package:image_picker/image_picker.dart';

class CreateArtPage extends StatelessWidget {
  const CreateArtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<UploadPictureFormBloc>(),
      child: BlocConsumer<UploadPictureFormBloc, UploadPictureFormState>(
        listener: (context, state) {
          state.failureOrSuccess?.fold((l) => null, (r) => 'hello');
        },
        builder: (context, state) => Scaffold(
          body: SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: Text('Create Art'),
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
                        CreateArtButton()
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

class CreateArtButton extends StatelessWidget {
  CreateArtButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.green[200]),
        onPressed: () {
          context
              .read<UploadPictureFormBloc>()
              .add(UploadPictureFormEvent.pressedCreate());
        },
        child: Text('Create', style: TextStyle(fontSize: 20)),
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
