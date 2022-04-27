import 'package:flutter/material.dart';

class myTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.dark(),
    canvasColor: Colors.black,
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.green,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
    canvasColor: Colors.white,
  );

  static final dark = {
    'background': const BoxDecoration(
      color: Colors.black,
    ),
  };

  static final light = {
    'background': const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end:  Alignment.bottomCenter,
            stops: [0, 0.3],
            colors: [Colors.green, Colors.white])
        ),
  };

  /* getStyle(String value, bool mode){
    return mode ? dark[value] : light[value];
  } */
}