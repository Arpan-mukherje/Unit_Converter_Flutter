import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:lottie/lottie.dart';

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({Key? key}) : super(key: key);
  @override
  State<SplashScreen3> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen3> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset('assets/animations/man.json'),
      ],
    )));
  }
}
