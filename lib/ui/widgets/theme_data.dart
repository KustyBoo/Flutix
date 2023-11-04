// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

ColorScheme warnaApp = ColorScheme.fromSeed(
  seedColor: Color(0xFFFEFAE0),
  primary: Color(0xFFFEFAE0), // cream
  onPrimary: Color(0xFFBC6C25), // coklat
  secondary: Color(0xFF606C38), // ijo
  onSecondary: Colors.white, // putih
  surface: Color(0xFF606C38).withOpacity(0.5), // ijo 50%
  onSurface: Color(0xFFFEFAE0).withOpacity(0.5), // cream 50%
  primaryContainer: Color(0xFFDDA15E), // cream-coklat tua
  onPrimaryContainer: Color(0xFFFFCA7A), // orange-coklat muda
  tertiary: Colors.black, // ireng
  brightness: Brightness.light,
);

TextTheme teksApp = TextTheme(
  // tulisan buat headline intro login
  headlineLarge: TextStyle(
    fontSize: 30,
    fontFamily: "Raleway",
    fontWeight: FontWeight.w200,
  ),

  // tulisan buat headline intro sisanya
  headlineMedium: TextStyle(
    fontSize: 22,
    fontFamily: "Raleway",
    fontWeight: FontWeight.w200,
  ),

  // tulisan nama user di profile
  displayLarge: TextStyle(
    fontSize: 25,
    fontFamily: "Raleway",
    fontWeight: FontWeight.w700,
    color: warnaApp.onPrimary,
  ),

  // tulisan di profile
  displayMedium: TextStyle(
    fontSize: 18,
    fontFamily: "Raleway",
    fontWeight: FontWeight.w700,
    color: warnaApp.secondary,
  ),

  // tulisan di wallet
  displaySmall: TextStyle(
    fontSize: 16,
    fontFamily: "Raleway",
    fontWeight: FontWeight.w700,
    color: warnaApp.secondary,
  ),

  // tulisan success checkout
  bodyMedium: TextStyle(
    fontSize: 20,
    fontFamily: "Raleway",
    fontWeight: FontWeight.w200,
    color: warnaApp.onPrimary,
  ),

  // tulisan di button top up
  bodySmall: TextStyle(
    fontSize: 16,
    fontFamily: "Raleway",
    fontWeight: FontWeight.w700,
    color: warnaApp.onSecondary,
  ),

  // tulisan uang di card wallet
  labelLarge: TextStyle(
    fontSize: 40,
    fontFamily: "Oswald",
    fontWeight: FontWeight.w200,
    color: warnaApp.onSecondary,
  ),

  // tulisan di card wallet
  labelMedium: TextStyle(
    fontSize: 18,
    fontFamily: "Oswald",
    fontWeight: FontWeight.w200,
    color: warnaApp.onSecondary,
  ),

  // tulisan di wallet top up history
  labelSmall: TextStyle(
    fontSize: 18,
    fontFamily: "Raleway",
    fontWeight: FontWeight.w200,
    color: warnaApp.secondary,
  )
);

ElevatedButtonThemeData mainBtnApp = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: warnaApp.secondary,
    foregroundColor: warnaApp.onSecondary,
    minimumSize: Size(152, 42),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    padding: EdgeInsets.fromLTRB(8, 10, 8, 10),
    textStyle: TextStyle(
      fontSize: 16,
      fontFamily: "Raleway",
      fontWeight: FontWeight.w700,
    ),
    disabledBackgroundColor: warnaApp.surface,
    disabledForegroundColor: warnaApp.onSurface,
  ),
);

ThemeData temaApp = ThemeData(
  colorScheme: warnaApp,
  textTheme: teksApp,
  elevatedButtonTheme: mainBtnApp,
  scaffoldBackgroundColor: warnaApp.primary,
);
