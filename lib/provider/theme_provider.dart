import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  final List<ThemeData> _themes = [
    // Light theme with blue color scheme and Roboto font
    ThemeData(
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: Colors.blue,
        secondary: Colors.blueAccent,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontFamily: 'Roboto'),
      ),
    ),
    // Light theme with green color scheme and Lobster font
    ThemeData(
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: Colors.green,
        secondary: Colors.lightGreen,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontFamily: 'Lobster'),
      ),
    ),
    // Dark theme with purple color scheme and Oswald font
    ThemeData(
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: Colors.deepPurple,
        secondary: Colors.purpleAccent,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontFamily: 'Oswald'),
      ),
    ),
  ];

  int _currentThemeIndex = 0;

  ThemeData get currentTheme => _themes[_currentThemeIndex];

  int get currentThemeIndex => _currentThemeIndex;

  void changeTheme(int index) {
    _currentThemeIndex = index;
    notifyListeners();
  }
}
