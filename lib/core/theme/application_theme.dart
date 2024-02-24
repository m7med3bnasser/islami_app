import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Application_Theme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFFB7935F),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.black,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFB7935F),
        selectedIconTheme: IconThemeData(
          color: Colors.black,
          size: 32,
        ),
        selectedItemColor: Colors.black,
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 28,
        ),
        unselectedItemColor: Colors.white,
      ),
  textTheme: TextTheme(
    titleLarge: GoogleFonts.elMessiri(
      fontWeight: FontWeight.bold,
      fontSize: 30,
      color: Colors.black,
    ),
    bodyLarge: GoogleFonts.elMessiri(
      fontWeight: FontWeight.bold,
      fontSize: 25,
      color: Colors.black,
    ) ,
    bodyMedium:  GoogleFonts.elMessiri(
      fontWeight: FontWeight.w500,
      fontSize: 25,
      color: Colors.black,
    ),
    bodySmall:  GoogleFonts.elMessiri(
      fontWeight: FontWeight.normal,
      fontSize: 18,
      color: Colors.black,
    )
  )
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.black,
      ),
    ),
  );
}
