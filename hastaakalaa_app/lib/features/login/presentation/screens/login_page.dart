import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/features/login/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:hastaakalaa_app/features/register/presentation/screens/register_page.dart';
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
              Center(
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
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      UserNameTextFormField(),
                      PasswordTextFormField(),
                      SizedBox(height: 10.0),
                      AddLoginButton(),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Don\'t have an account?'),
                          AddRegisterButton(),
                        ],
                      )
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
  UserNameTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Enter your email address',
        labelText: 'Email',
        errorStyle: TextStyle(fontSize: 13),
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
  PasswordTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Enter your password',
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
  AddLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.green[200]),
        onPressed: () {
          context.read<LoginBloc>().add(LoginEvent.pressedSend());
        },
        child: Text('Login', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

class AddRegisterButton extends StatelessWidget {
  AddRegisterButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child:
          Text('Register', style: TextStyle(fontSize: 15.0, color: Colors.red)),
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => RegisterPage())),
    );
  }
}
