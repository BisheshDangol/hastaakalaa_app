import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/splash_screen.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hastaakalaa App',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          subtitle1: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
