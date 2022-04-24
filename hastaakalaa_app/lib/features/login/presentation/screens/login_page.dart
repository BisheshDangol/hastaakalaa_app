import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/features/login/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:hastaakalaa_app/injection_container.dart';
import 'package:hastaakalaa_app/navigation_bar_page.dart';

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
            } else if (r == 200) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => NavigationBarPage(),
                ),
              );
              const sucessSnackBar = SnackBar(content: Text('Login Sucessful'));
              ScaffoldMessenger.of(context).showSnackBar(sucessSnackBar);
            } else if (r == 400) {
              const failureSnackBar = SnackBar(content: Text('Login Failed'));
              ScaffoldMessenger.of(context).showSnackBar(failureSnackBar);
            }
          });
        },
        builder: (context, state) => Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Stack(
                      children: <Widget>[
                        //stack overlaps widgets
                        Opacity(
                          //semi red clippath with more height and with 0.5 opacity
                          opacity: 0.5,
                          child: ClipPath(
                            clipper:
                                WaveClipper(), //set our custom wave clipper
                            child: Container(
                              color: Color.fromARGB(255, 135, 207, 255),
                              height: 270,
                            ),
                          ),
                        ),

                        ClipPath(
                          //upper clippath with less height
                          clipper: WaveClipper(), //set our custom wave clipper.
                          child: Container(
                              padding: const EdgeInsets.only(bottom: 50),
                              color: Color.fromARGB(255, 11, 108, 235),
                              height: 250,
                              alignment: Alignment.center,
                              child: const Text(
                                "Welcome Back",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontFamily: 'Broadley',
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 100),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Form(
                      autovalidateMode: AutovalidateMode.always,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            UserNameTextFormField(),
                            Divider(),
                            PasswordTextFormField(),
                            SizedBox(height: 10.0),
                            Divider(),
                            AddLoginButton(),
                            SizedBox(height: 10.0),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
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
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
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
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
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
        style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 113, 138, 251)),
        onPressed: () {
          context.read<LoginBloc>().add(LoginEvent.pressedSend());
        },
        child: Text('Submit', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

//Costom CLipper class with Path
class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(
        0, size.height); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(
        size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}
