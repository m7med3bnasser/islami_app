

import 'package:flutter/material.dart';

import 'package:islami/core/theme/application_theme.dart';
import 'package:islami/models/quran/quran_%20details_View.dart';
import 'package:islami/models/splash_screeen/splash_screen.dart';

import 'layout/home_layout.dart';
import 'models/hadeth/hadeth_ details_View.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Application_Theme.lightTheme,
      darkTheme: Application_Theme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute:Splash_Screen.routeName ,
      routes:{
        Splash_Screen.routeName:(context) => const Splash_Screen(),
        HomeLayout.routename:(context) =>  HomeLayout(),
        QuranDetailsView.routename :(context) => QuranDetailsView(),
        HadethDetailsView.routename :(context) => HadethDetailsView(),
      } ,
    );
  }
}


