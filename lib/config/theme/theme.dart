import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.grey[200], // Smoky white background
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[200], // AppBar color matches light mode background
    foregroundColor: Colors.purple, // AppBar icon color in purple
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Colors.purple), // Purple text
    bodyText2: TextStyle(color: Colors.purple),
    headline1: TextStyle(color: Colors.purple),
    headline2: TextStyle(color: Colors.purple),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black, // Black background for dark mode
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black, // AppBar color matches dark mode background
    foregroundColor: Colors.purple, // AppBar icon color in purple
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Colors.purple), // Purple text
    bodyText2: TextStyle(color: Colors.purple),
    headline1: TextStyle(color: Colors.purple),
    headline2: TextStyle(color: Colors.purple),
  ),
);
