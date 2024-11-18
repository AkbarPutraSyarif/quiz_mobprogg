import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_mobprogg/provider/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          const Text('Select Theme:'),
          for (int i = 0; i < 3; i++) // Loop untuk pilihan tema
            RadioListTile(
              title: Text('Theme ${i + 1}'),
              value: i,
              groupValue: themeProvider.currentThemeIndex,
              onChanged: (int? value) {
                if (value != null) {
                  themeProvider.changeTheme(value);
                }
              },
            ),
        ],
      ),
    );
  }
}
