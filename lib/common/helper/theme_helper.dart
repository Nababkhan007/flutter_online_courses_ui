import 'package:flutter/material.dart';

class ThemeHelper {
  static ThemeData get lightTheme => ThemeData(
        fontFamily: "Roboto",
        primaryColor: Colors.deepOrangeAccent,
        secondaryHeaderColor: Colors.orangeAccent,
        disabledColor: Colors.white10,
        backgroundColor: Colors.white54,
        errorColor: Colors.red,
        hintColor: Colors.white30,
        cardColor: Colors.white,
        textTheme: const TextTheme(
          headline3: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          headline5: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 12.0,
          ),
        ),
        cardTheme: const CardTheme(
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
        ),
        colorScheme: const ColorScheme.light(
          primary: Color(0xFFEF7822),
          secondary: Color(0xFFEF7822),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFFEF7822),
          ),
        ),
      );

  static ThemeData get darkTheme => ThemeData(
        fontFamily: "Roboto",
        primaryColor: Colors.deepOrangeAccent,
        secondaryHeaderColor: Colors.orangeAccent,
        disabledColor: Colors.black12,
        backgroundColor: Colors.black54,
        errorColor: Colors.red,
        hintColor: Colors.black12,
        cardColor: Colors.black,
        textTheme: const TextTheme(
          headline3: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          headline5: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 12.0,
          ),
        ),
        cardTheme: const CardTheme(
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
          ),
        ),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFFFBD5C),
          secondary: Color(0xFFFFBD5C),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFFFFBD5C),
          ),
        ),
      );
}
