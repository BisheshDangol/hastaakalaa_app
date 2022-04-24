import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/navigation_bar_page.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _coffeeController;
  bool copAnimated = false;
  bool animateCafeText = false;
  bool tokenOrNot = false;
  @override
  void initState() {
    super.initState();
    _coffeeController = AnimationController(vsync: this);
    _coffeeController.addListener(() {
      if (_coffeeController.value > 0.5) {
        // copAnimated = true;
        // setState(() {});
        Future.delayed(Duration(seconds: 0), () {
          // animateCafeText = true;
          // setState(() {});
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
            tokenOrNot == true ? NavigationBarPage() : _BottomPart(),
      ),
    );
  }

  @override
  void dispose() {
    _coffeeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xfff8dc9c),
      body: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: copAnimated ? screenHeight / 1.9 : screenHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(copAnimated ? 40.0 : 0.0),
            ),
            child: Visibility(
              visible: !copAnimated,
              child: Center(
                child: Lottie.asset(
                  'assets/97591-loading.json',
                  controller: _coffeeController,
                  onLoaded: (composition) {
                    _coffeeController
                      ..duration = composition.duration
                      ..forward();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height / 1.5;
    final deviceWidth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 71, 71, 71),
      body: Container(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        // color: Color.fromARGB(255, 255, 200, 200),
                        color: Color.fromARGB(255, 255, 255, 255),
                        spreadRadius: 4,
                        blurRadius: 1,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    border: Border.all(color: Colors.white10),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  height: deviceHeight,
                  width: deviceWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 300,
                            width: 300,
                            child: Lottie.asset(
                              'assets/72440-art-graphic.json',
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Text(
                          'Hastaakalaa',
                          style: TextStyle(
                              fontSize: 40.0,
                              fontFamily: 'Broadley',
                              letterSpacing: 7),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.0),
            SizedBox(
              height: 60,
              width: deviceWidth * 0.35,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'login'),
                child: Text('L O G I N',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 80, 176, 255)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 60,
              width: deviceWidth * 0.35,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'register'),
                child: Text('R E G I S T E R',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 221, 71, 61)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
