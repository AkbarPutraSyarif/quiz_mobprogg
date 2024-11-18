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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Select Theme:', style: TextStyle(fontSize: 18)),
            ),
            const Text('Themes by Background Color:'),
            for (int i = 0; i < 3; i++) // Loop untuk 3 tema warna
              RadioListTile(
                title: Text('Background Theme ${i + 1}'),
                value: i,
                groupValue: themeProvider.currentThemeIndex,
                onChanged: (int? value) {
                  if (value != null) {
                    themeProvider.changeTheme(value);
                  }
                },
              ),
            const Divider(),
            const Text('Themes by Font Style:'),
            for (int i = 3; i < 6; i++) // Loop untuk 3 tema font
              RadioListTile(
                title: Text('Font Theme ${i - 2}'),
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
      ),
    );
  }
}
