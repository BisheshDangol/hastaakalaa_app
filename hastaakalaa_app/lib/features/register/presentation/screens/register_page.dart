import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/features/register/presentation/bloc/bloc/register_form_bloc.dart';

import '../../../../injection_container.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<RegisterFormBloc>(),
      child: BlocConsumer<RegisterFormBloc, RegisterFormState>(
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
                      EmailTextFormField(),
                      UserNameTextFormField(),
                      FirstNameTextFormField(),
                      LastNameTextFormField(),
                      PasswordTextFormField(),
                      AddressTextFormField(),
                      PhoneNumberTextFormField(),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'User Type:\t\t ',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey[700]),
                          ),
                          UserTypeTextFormField(),
                        ],
                      ),
                      AddRegisterButton()
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

class EmailTextFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Enter you email address',
        labelText: 'Email',
        errorStyle: TextStyle(fontSize: 13),
      ),
      onChanged: (value) {
        context
            .read<RegisterFormBloc>()
            .add(RegisterFormEvent.changedEmail(email: value));
      },
      validator: (_) => context.read<RegisterFormBloc>().state.showErrors
          ? context
              .read<RegisterFormBloc>()
              .state
              .email
              .fold((e) => e.msg.toString(), (_) => null)
          : null,
    );
  }
}

class UserNameTextFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Enter your username',
        labelText: 'Username',
        errorStyle: TextStyle(fontSize: 13),
      ),
      onChanged: (value) {
        context
            .read<RegisterFormBloc>()
            .add(RegisterFormEvent.changedUserName(userName: value));
      },
      validator: (_) => context.read<RegisterFormBloc>().state.showErrors
          ? context
              .read<RegisterFormBloc>()
              .state
              .userName
              .fold((e) => e.msg.toString(), (_) => null)
          : null,
    );
  }
}

class FirstNameTextFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Enter your first name',
        labelText: 'First Name',
        errorStyle: TextStyle(fontSize: 13),
      ),
      onChanged: (value) {
        context
            .read<RegisterFormBloc>()
            .add(RegisterFormEvent.changedFirstName(firstName: value));
      },
      validator: (_) => context.read<RegisterFormBloc>().state.showErrors
          ? context
              .read<RegisterFormBloc>()
              .state
              .firstName
              .fold((e) => e.msg.toString(), (_) => null)
          : null,
    );
  }
}

class LastNameTextFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Enter your last name',
        labelText: 'Last Name',
        errorStyle: TextStyle(fontSize: 13),
      ),
      onChanged: (value) {
        context
            .read<RegisterFormBloc>()
            .add(RegisterFormEvent.changedLastName(lastName: value));
      },
      validator: (_) => context.read<RegisterFormBloc>().state.showErrors
          ? context
              .read<RegisterFormBloc>()
              .state
              .lastName
              .fold((e) => e.msg.toString(), (_) => null)
          : null,
    );
  }
}

class PasswordTextFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Enter a password',
        labelText: 'Password',
        errorStyle: TextStyle(fontSize: 13),
      ),
      onChanged: (value) {
        context
            .read<RegisterFormBloc>()
            .add(RegisterFormEvent.changedPassword(password: value));
      },
      validator: (_) => context.read<RegisterFormBloc>().state.showErrors
          ? context
              .read<RegisterFormBloc>()
              .state
              .password
              .fold((e) => e.msg.toString(), (_) => null)
          : null,
    );
  }
}

class AddressTextFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Enter your home address',
        labelText: 'Address',
        errorStyle: TextStyle(fontSize: 13),
      ),
      onChanged: (value) {
        context
            .read<RegisterFormBloc>()
            .add(RegisterFormEvent.changedAddress(address: value));
      },
      validator: (_) => context.read<RegisterFormBloc>().state.showErrors
          ? context
              .read<RegisterFormBloc>()
              .state
              .address
              .fold((e) => e.msg.toString(), (_) => null)
          : null,
    );
  }
}

class PhoneNumberTextFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Enter your phone number',
        labelText: 'Phone Number',
        errorStyle: TextStyle(fontSize: 13),
      ),
      onChanged: (value) {
        context
            .read<RegisterFormBloc>()
            .add(RegisterFormEvent.changedPhoneNumber(phoneNumber: value));
      },
      validator: (_) => context.read<RegisterFormBloc>().state.showErrors
          ? context
              .read<RegisterFormBloc>()
              .state
              .phoneNumber
              .fold((e) => e.msg.toString(), (_) => null)
          : null,
    );
  }
}

class UserTypeTextFormField extends StatefulWidget {
  @override
  State<UserTypeTextFormField> createState() => _UserTypeTextFormFieldState();
}

class _UserTypeTextFormFieldState extends State<UserTypeTextFormField> {
  String? dropdownValue;
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
          context
              .read<RegisterFormBloc>()
              .add(RegisterFormEvent.changedUserType(userType: dropdownValue));
        });
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
          context
              .read<RegisterFormBloc>()
              .add(RegisterFormEvent.pressedCreate());
        },
        child: Text('Login', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
