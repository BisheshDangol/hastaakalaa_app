import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/features/login/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:hastaakalaa_app/injection_container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<LoginBloc>(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          state.failureOrSuccess?.fold((l) => null, (r) {
            if (state.isLoading == true) {
              const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isLoading == false) {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const HomePage(),
              //   ),
              // );
            }
          });
        },
        builder: (context, state) => Scaffold(
          body: SafeArea(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      UserNameTextFormField(),
                      PasswordTextFormField(),
                      AddLoginButton()
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

class UserNameTextFormField extends StatelessWidget {
  const UserNameTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'User Name',
        labelText: 'User Name',
        errorStyle: const TextStyle(fontSize: 13),
      ),
      onChanged: (value) {
        context
            .read<LoginBloc>()
            .add(LoginEvent.changedUsername(username: value));
      },
      validator: (_) => context.read<LoginBloc>().state.showErrors
          ? context
              .read<LoginBloc>()
              .state
              .username
              .fold((e) => e.msg.toString(), (_) => null)
          : null,
    );
  }
}

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Password',
        labelText: 'Password',
        errorStyle: TextStyle(fontSize: 13),
      ),
      onChanged: (value) {
        context
            .read<LoginBloc>()
            .add(LoginEvent.changedPassword(password: value));
        debugPrint(value);
      },
      validator: (_) => context.read<LoginBloc>().state.showErrors
          ? context.read<LoginBloc>().state.password.fold(
                (e) => e.msg.toString(),
                (_) => null,
              )
          : null,
    );
  }
}

class AddLoginButton extends StatelessWidget {
  const AddLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<LoginBloc>().add(const LoginEvent.pressedSend());
      },
      child: const Text('Login'),
    );
  }
}
