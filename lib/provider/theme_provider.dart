import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  final List<ThemeData> _themes = [
    // Theme 1: Light background (White)
    ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(
        primary: Colors.blue,
        secondary: Colors.blueAccent,
      ),
      textTheme: const TextTheme(bodyLarge: TextStyle(fontFamily: 'Roboto')),
    ),
    // Theme 2: Light background (Beige)
    ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.lightGreen,
      colorScheme: const ColorScheme.light(
        primary: Colors.green,
        secondary: Colors.lightGreen,
      ),
      textTheme: const TextTheme(bodyLarge: TextStyle(fontFamily: 'Roboto')),
    ),
    // Theme 3: Light background (Light Blue)
    ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.lightBlue[50],
      colorScheme: const ColorScheme.light(
        primary: Colors.deepOrange,
        secondary: Colors.orangeAccent,
      ),
      textTheme: const TextTheme(bodyLarge: TextStyle(fontFamily: 'Roboto')),
    ),
    // Theme 4: Font Roboto
    ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(
        primary: Colors.blue,
        secondary: Colors.blueAccent,
      ),
      textTheme: const TextTheme(bodyLarge: TextStyle(fontFamily: 'Roboto')),
    ),
    // Theme 5: Font Lobster
    ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(
        primary: Colors.green,
        secondary: Colors.lightGreen,
      ),
      textTheme: const TextTheme(bodyLarge: TextStyle(fontFamily: 'Lobster')),
    ),
    // Theme 6: Font Oswald
    ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(
        primary: Colors.deepOrange,
        secondary: Colors.orangeAccent,
      ),
      textTheme: const TextTheme(bodyLarge: TextStyle(fontFamily: 'Oswald')),
    ),
  ];

  int _currentThemeIndex = 0;

  ThemeData get currentTheme => _themes[_currentThemeIndex];

  int get currentThemeIndex => _currentThemeIndex;

  void changeTheme(int index) {
    if (index >= 0 && index < _themes.length) {
      _currentThemeIndex = index;
      notifyListeners();
    } else {
      throw RangeError('Invalid theme index: $index');
    }
  }
}
