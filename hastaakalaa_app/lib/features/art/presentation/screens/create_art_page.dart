import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_form_bloc/art_form_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/bookmark_page.dart';
import 'package:hastaakalaa_app/features/payment/presentation/screens/payment_list_page.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../injection_container.dart';

class CreateArtPage extends StatelessWidget {
  const CreateArtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKeyScreen1 = GlobalKey<FormState>();
    return BlocProvider(
      create: (_) => sl<ArtFormBloc>(),
      child: BlocConsumer<ArtFormBloc, ArtFormState>(
        listener: (context, state) {
          state.failureOrSuccess?.fold((l) => null, (r) {
            Navigator.of(context).pop();
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => CreateArtPage()));
          });
        },
        builder: (context, state) => Scaffold(
          body: SafeArea(
            child: Scaffold(
              drawer: Drawer(
                child: ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color.fromRGBO(180, 98, 30, 1),
                          Colors.white,
                        ],
                      )),
                      height: MediaQuery.of(context).size.height * 0.22,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Hastaakalaa',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BookmarkPage()));
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            Icon(Icons.bookmark_added),
                            SizedBox(width: 20),
                            Text(
                              'My Bookmarks',
                              style: TextStyle(
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PaymentListPage()));
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            Icon(Icons.payment_sharp),
                            SizedBox(width: 20),
                            Text(
                              'My Payments',
                              style: TextStyle(
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    InkWell(
                      onTap: () async {
                        await Future.delayed(
                          const Duration(milliseconds: 500),
                        );
                        TokenSharedPrefernces.instance.removeToken("token");

                        Navigator.of(context, rootNavigator: true)
                            .popAndPushNamed('splash');
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            Icon(Icons.logout),
                            SizedBox(width: 20),
                            Text(
                              'Logout',
                              style: TextStyle(
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              appBar: AppBar(
                title: Text('Create Art'),
                centerTitle: true,
              ),
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Form(
                    key: _formKeyScreen1,
                    autovalidateMode: AutovalidateMode.always,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
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
                                    color: Color.fromRGBO(180, 98, 30, 1)),
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
                                    color: Color.fromRGBO(180, 98, 30, 1)),
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
                                    color: Color.fromRGBO(180, 98, 30, 1)),
                              ),
                              GenreArtDropDownList(),
                            ],
                          ),
                          PickImage(),
                          SizedBox(height: 10.0),
                          CreateArtButton(
                            firstScreenFormKey: _formKeyScreen1,
                          )
                        ],
                      ),
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
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromRGBO(180, 98, 30, 1), width: 2.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
        labelStyle: TextStyle(color: Color.fromRGBO(180, 98, 30, 1)),
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
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromRGBO(180, 98, 30, 1), width: 2.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
        labelStyle: TextStyle(color: Color.fromRGBO(180, 98, 30, 1)),
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
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromRGBO(180, 98, 30, 1), width: 2.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
        labelStyle: TextStyle(color: Color.fromRGBO(180, 98, 30, 1)),
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
            .add(ArtFormEvent.changedGenre(genre: newValue));
        // debugPrint('${newValue.toString()}');
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
  final GlobalKey<FormState> firstScreenFormKey;
  CreateArtButton({Key? key, required this.firstScreenFormKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKeyScreen2 = GlobalKey<FormState>();
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromRGBO(101, 101, 107, 1)),
        ),
        onPressed: () {
          context.read<ArtFormBloc>().add(ArtFormEvent.pressedCreate());
          _formKeyScreen2.currentState?.reset();
          firstScreenFormKey.currentState?.reset();
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
