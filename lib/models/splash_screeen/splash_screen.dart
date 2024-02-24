import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/layout/home_layout.dart';

class Splash_Screen extends StatelessWidget {
  static const String routeName = "splash";

  const Splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routename);
    });

    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset(
        "assets/images/splash.png",
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
