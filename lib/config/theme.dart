import 'package:flutter/material.dart';

class MyThemeData {
  ThemeData themeData = ThemeData(
    textTheme: const TextTheme(
      subtitle2: TextStyle(
        color: Colors.grey,
      ),
      headline3: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
      headline4: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      bodyText1: TextStyle(
        color: Colors.grey,
      ),
    ),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    dividerColor: Colors.grey,
  );
}
