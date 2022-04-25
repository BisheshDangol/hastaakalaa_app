import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_filter_watcher_bloc/art_filter_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_form_bloc/art_form_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_list_watcher_bloc/bloc/art_list_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/comment/presentation/bloc/comment_form_bloc/comment_form_bloc.dart';
import 'package:hastaakalaa_app/features/login/presentation/screens/login_page.dart';
import 'package:hastaakalaa_app/features/register/presentation/screens/register_page.dart';
import 'package:hastaakalaa_app/injection_container.dart';
import 'package:hastaakalaa_app/splash_screen.dart';
import 'injection_container.dart' as di;
import 'package:khalti_flutter/khalti_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ArtFormBloc>(
          create: (context) => sl<ArtFormBloc>(),
        ),
        BlocProvider<ArtFilterWatcherBloc>(
          create: (context) => sl<ArtFilterWatcherBloc>(),
        ),
        BlocProvider<ArtListWatcherBloc>(
          create: (context) => sl<ArtListWatcherBloc>(),
        ),
        BlocProvider<CommentFormBloc>(
          create: (context) => sl<CommentFormBloc>(),
        ),
      ],
      child: KhaltiScope(
        publicKey: "test_public_key_f9f82f7ceb6b4f929b727ee5c83fb63b",
        builder: (context, navigatorKey) {
          return MaterialApp(
            navigatorKey: navigatorKey,
            debugShowCheckedModeBanner: false,
            title: 'Hastaakalaa App',
            supportedLocales: const [
              Locale('en', 'US'),
              Locale('ne', 'NP'),
            ],
            localizationsDelegates: const [
              KhaltiLocalizations.delegate,
            ],
            theme: ThemeData(
              fontFamily: 'Roboto',
              appBarTheme: AppBarTheme(color: Color.fromRGBO(180, 98, 30, 1)),
              // ignore: deprecated_member_use
              accentColor: Color.fromRGBO(180, 98, 30, 1),
              textTheme: const TextTheme(
                subtitle1:
                    TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              ),
            ),
            routes: {
              'login': (context) => const LoginPage(),
              'register': (context) => const RegisterPage(),
              'splash': (context) => SplashScreen(),
            },
            home: SplashScreen(),
          );
        },
      ),
    );
  }
}
