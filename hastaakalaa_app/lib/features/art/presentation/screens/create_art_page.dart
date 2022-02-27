import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/bloc/art_form_bloc.dart';
import 'package:hastaakalaa_app/features/register/presentation/bloc/bloc/register_form_bloc.dart';

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
            child: Container(
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
                      // AddRegisterButton()
                    ],
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
        errorText: context
            .read<ArtFormBloc>()
            .state
            .title
            .fold((l) => l.msg, (r) => null),
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
        hintText: 'Enter the description of the description',
        labelText: 'Description',
        errorStyle: TextStyle(fontSize: 13),
        errorText: context
            .read<ArtFormBloc>()
            .state
            .description
            .fold((l) => l.msg, (r) => null),
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
        errorText: context
            .read<ArtFormBloc>()
            .state
            .price
            .fold((l) => l.msg, (r) => null),
      ),
      onChanged: (value) {
        context
            .read<ArtFormBloc>()
            .add(ArtFormEvent.changedPrice(price: int.tryParse(value)));
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
  String dropdownValue = 'true';
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

class StatusArtDropDownList extends StatefulWidget {
  StatusArtDropDownList({Key? key}) : super(key: key);

  @override
  State<StatusArtDropDownList> createState() => _StatusArtDropDownListState();
}

class _StatusArtDropDownListState extends State<StatusArtDropDownList> {
  String dropdownValue = 'showcase';
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
            .add(ArtFormEvent.changedStatus(status: newValue));
      },
    );
  }
}

class UserTypeTextFormField extends StatefulWidget {
  @override
  State<UserTypeTextFormField> createState() => _UserTypeTextFormFieldState();
}

class _UserTypeTextFormFieldState extends State<UserTypeTextFormField> {
  String dropdownValue = 'artist';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: <String>['artist', 'art collector']
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
            .read<RegisterFormBloc>()
            .add(RegisterFormEvent.changedUserType(userType: newValue));
      },
    );
  }
}

class AddRegisterButton extends StatelessWidget {
  AddRegisterButton({Key? key}) : super(key: key);

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
