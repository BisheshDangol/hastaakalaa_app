import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/create_art_page.dart';
import 'package:hastaakalaa_app/navigation_bar_page.dart';

import 'features/login/presentation/screens/login_page.dart';
// import 'features/register/presentation/screens/register_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  bool tokenOrNot = false;
  @override
  void initState() {
    super.initState();
    _checkTokenValue();
    _navigateToLogin();
  }

  _checkTokenValue() async {
    tokenOrNot = await TokenSharedPrefernces.instance.containsToken("token");
  }

  _navigateToLogin() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) =>
            tokenOrNot == true ? NavigationBarPage() : LoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Splash Screen')),
    );
  }
}
