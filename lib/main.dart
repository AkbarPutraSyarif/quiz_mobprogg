import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_mobprogg/provider/theme_provider.dart';
import 'package:quiz_mobprogg/screens/main_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeProvider.currentTheme,
      home: const MainScreen(),
    );
  }
}
