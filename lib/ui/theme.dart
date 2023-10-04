import 'package:flutter/material.dart';

class MainTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme(
      primary: Color(0xff6036D6),
      onPrimary: Colors.white,
      secondary: Color(0xff373737),
      onSecondary: Colors.white,
      tertiary: Color(0xffA1A3AF),
      tertiaryContainer: Color(0xffBBBDC9),
      background: Color(0xff000000),
      onBackground: Colors.white,
      brightness: Brightness.light,
      error: Color(0xffEA4B4B),
      onError: Colors.white,
      surface: Colors.white,
      onSurface: Color(0xff373737),
      outline: Color(0xffD4D4D4),
      
    ),
    appBarTheme: const AppBarTheme(
      iconTheme:IconThemeData(
        color: Colors.white,
      ),
      elevation: 0,
      centerTitle: true,  // Esto centrará todos los títulos de AppBar
      titleTextStyle: TextStyle(
        fontFamily: 'Circular Std',
        fontSize: 18.0,
        color: Color(0xff272E35),
        fontWeight: FontWeight.bold,
        letterSpacing: -0.5
      ),
    ),
    buttonTheme: const ButtonThemeData(
      splashColor: Colors.transparent,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) return null; // Transparente cuando está pulsado
            return null; // Dejar transparente por defecto
          },
        ),
      ),
    ),
    splashColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    shadowColor: const Color(0xffA1A4CD).withOpacity(0.08),
    scaffoldBackgroundColor: Color(0xff000000),
    fontFamily: 'Circular Std',
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'Circular Std',
        fontSize: 60.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.5
      ),
      headlineMedium: TextStyle(
        fontFamily: 'Circular Std',
        fontSize: 45.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.5
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Circular Std',
        fontSize: 30.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.5
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Circular Std',
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 28.0,
        height: 1.15
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Circular Std',
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 22.0,
        height: 1.15
      ),
      bodySmall: TextStyle(
        fontFamily: 'Circular Std',
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 18.0,
        height: 1.15
      ),
    ),
  );
}
