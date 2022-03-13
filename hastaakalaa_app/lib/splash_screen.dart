import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/create_art_page.dart';
import 'package:hastaakalaa_app/navigation_bar_page.dart';

import 'features/login/presentation/screens/login_page.dart';
// import 'features/register/presentation/screens/register_page.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _artistController;
  bool isSketch = false;
  bool isTextReady = false;
  bool tokenOrNot = false;
  @override
  void initState() {
    super.initState();
    _artistController = AnimationController(vsync: this);
    _artistController.addListener(() {
      if (_artistController.value > 0.7) {
        isSketch = true;
        setState(() {});
        Future.delayed(Duration(seconds: 1), () {
          isTextReady = true;
          setState(() {});
        });
      }
    });
    _checkTokenValue();
    _navigateToLogin();
  }

  _checkTokenValue() async {
    tokenOrNot = await TokenSharedPrefernces.instance.containsToken("token");
  }

  _navigateToLogin() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) =>
            tokenOrNot == true ? NavigationBarPage() : LoginPage(),
      ),
    );
  }

  @override
  void dispose() {
    _artistController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xfff8dc9c),
      body: Stack(
        children: [
          Visibility(
            child: BottomPart(),
            visible: isSketch,
          ),
          AnimatedContainer(
            height: isSketch ? (height / 1.45) : height,
            duration: Duration(seconds: 1),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(3, 3),
                  blurRadius: 10,
                  spreadRadius: 2,
                  color: Colors.black26,
                )
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(isSketch ? 25.0 : 0.0),
                bottomRight: Radius.circular(isSketch ? 25.0 : 0.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // AnimatedCrossFade(
                //   firstChild: Lottie,
                //   secondChild: secondChild,
                //   crossFadeState: crossFadeState,
                //   duration: duration,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
