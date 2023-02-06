import 'package:azkar_app/screens/login_screen.dart';
import 'package:azkar_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(Main());

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SplashScreen(),
      initialRoute: '/splash_screen',
      routes: {
        '/splash_screen': (context) => SplashScreen(),
        '/login_screen': (context) => LogIn(),
      },
    );
  }
}
