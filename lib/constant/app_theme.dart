import 'package:flutter/material.dart';

class AppThemes {
  static final light = ThemeData(
    appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 25, 101, 233)),
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: const Color.fromARGB(255, 133, 177, 255),
    primaryIconTheme: const IconThemeData(color: Colors.white),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
    ),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blueGrey,
    scaffoldBackgroundColor: Colors.black,
    primaryIconTheme: const IconThemeData(color: Colors.yellow),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
    ),
  );
}
