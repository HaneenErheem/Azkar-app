import 'dart:ui';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
//-------------------
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 7), () {
      Navigator.pushNamed(context, '/login_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ImageFiltered(
          //   imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          //   child: Image.asset(
          //     'images/bg21.JPG',
          //     fit: BoxFit.cover,
          //     height: double.infinity,
          //     width: double.infinity,
          //   ),
          // ),
          Center(
            child: Text(
              'Azkar App',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Text(
                'developed by-Eng.Haneen Erheem',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }
}
