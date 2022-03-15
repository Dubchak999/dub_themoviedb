import 'package:flutter/material.dart';

class MyThemeData {
  ThemeData themeData = ThemeData(
    textTheme: const TextTheme(
      headline3: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: TextStyle(fontSize: 16, color: Colors.grey),
      bodyText2: TextStyle(
        fontSize: 30,
      ),
    ),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
  );
}
