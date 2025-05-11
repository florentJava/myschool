import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primarySwatch: Colors.blue,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.blue,
    accentColor: Colors.orange,
    backgroundColor: Colors.white,
  ),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.blue),
    titleTextStyle: TextStyle(
      color: Colors.blue,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  textTheme: const TextTheme(
    displayMedium: TextStyle( // Remplace headline4
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.blue,
    ),
    displaySmall: TextStyle( // Remplace headline5
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.blue,
    ),
    titleMedium: TextStyle( // Remplace headline6
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.blue,
    ),
    bodyLarge: TextStyle( // Remplace bodyText1
      fontSize: 16,
      color: Colors.black87,
    ),
    bodyMedium: TextStyle( // Remplace bodyText2
      fontSize: 14,
      color: Colors.black54,
    ),
    labelLarge: TextStyle( // Pour les boutons
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
  cardTheme: CardTheme(
    elevation: 2,
    margin: const EdgeInsets.all(8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    buttonColor: Colors.blue,
  ),
);