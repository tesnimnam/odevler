import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDarkTheme = false;

  ThemeData get themeData {
    return isDarkTheme ? _darkTheme : _lightTheme;
  }

  void toggleTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }

  final ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.grey[900],
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: Colors.white),
    ),
  );

  final ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    buttonTheme: ButtonThemeData(buttonColor: const Color.fromARGB(255, 211, 220, 235)),
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: Colors.black),
    ),
  );
}
