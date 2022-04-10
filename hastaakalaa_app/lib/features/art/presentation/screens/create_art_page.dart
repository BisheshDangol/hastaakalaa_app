import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_form_bloc/art_form_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../injection_container.dart';

class CreateArtPage extends StatelessWidget {
  const CreateArtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ArtFormBloc>(),
      child: BlocConsumer<ArtFormBloc, ArtFormState>(
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
                        TitleFormField(),
                        DescriptionFormField(),
                        PriceFormField(),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'For Sale:\t\t\t\t ',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey[700]),
                            ),
                            ForSaleDropDownList(),
                          ],
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Status:\t\t\t\t ',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey[700]),
                            ),
                            StatusArtDropDownList(),
                          ],
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Genre:\t\t\t\t ',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey[700]),
                            ),
                            GenreArtDropDownList(),
                          ],
                        ),
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

class TitleFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Enter you image title',
        labelText: 'Title',
        errorStyle: TextStyle(fontSize: 13),
      ),
      onChanged: (value) {
        context
            .read<ArtFormBloc>()
            .add(ArtFormEvent.changedTitle(title: value));
      },
      validator: (_) => context.read<ArtFormBloc>().state.showErrors
          ? context
              .read<ArtFormBloc>()
              .state
              .title
              .fold((e) => e.msg.toString(), (_) => null)
          : null,
    );
  }
}

class DescriptionFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Enter the description of the art',
        labelText: 'Description',
        errorStyle: TextStyle(fontSize: 13),
      ),
      onChanged: (value) {
        context
            .read<ArtFormBloc>()
            .add(ArtFormEvent.changedDescription(description: value));
      },
      validator: (_) => context.read<ArtFormBloc>().state.showErrors
          ? context
              .read<ArtFormBloc>()
              .state
              .description
              .fold((e) => e.msg.toString(), (_) => null)
          : null,
    );
  }
}

class PriceFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Enter the price',
        labelText: 'Price',
        errorStyle: TextStyle(fontSize: 13),
      ),
      onChanged: (value) {
        context
            .read<ArtFormBloc>()
            .add(ArtFormEvent.changedPrice(price: int.parse(value)));
      },
      validator: (_) => context.read<ArtFormBloc>().state.showErrors
          ? context
              .read<ArtFormBloc>()
              .state
              .price
              .fold((e) => e.msg.toString(), (_) => null)
          : null,
    );
  }
}

class ForSaleDropDownList extends StatefulWidget {
  ForSaleDropDownList({Key? key}) : super(key: key);

  @override
  State<ForSaleDropDownList> createState() => _ForSaleDropDownListState();
}

class _ForSaleDropDownListState extends State<ForSaleDropDownList> {
  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: <String>['true', 'false']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      value: dropdownValue,
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
        context
            .read<ArtFormBloc>()
            .add(ArtFormEvent.changedForSale(forSale: newValue));
      },
    );
  }
}

class GenreArtDropDownList extends StatefulWidget {
  GenreArtDropDownList({Key? key}) : super(key: key);

  @override
  State<GenreArtDropDownList> createState() => _GenreArtDropDownListState();
}

class _GenreArtDropDownListState extends State<GenreArtDropDownList> {
  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: <String>[
        'abstract',
        'pop',
        'realism',
        'potrait',
        'landscape',
        'mithila'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      value: dropdownValue,
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
        context
            .read<ArtFormBloc>()
            .add(ArtFormEvent.changedGenre(genre: dropdownValue));
      },
    );
  }
}

class StatusArtDropDownList extends StatefulWidget {
  StatusArtDropDownList({Key? key}) : super(key: key);

  @override
  State<StatusArtDropDownList> createState() => _StatusArtDropDownListState();
}

class _StatusArtDropDownListState extends State<StatusArtDropDownList> {
  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: <String>['showcase', 'purchased', 'available']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      value: dropdownValue,
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
        context
            .read<ArtFormBloc>()
            .add(ArtFormEvent.changedStatus(status: dropdownValue));
      },
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
          context.read<ArtFormBloc>().add(ArtFormEvent.pressedCreate());
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
          .read<ArtFormBloc>()
          .add(ArtFormEvent.changedImage(image: imageTemp));
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
