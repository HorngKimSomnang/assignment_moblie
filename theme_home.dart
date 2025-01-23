import 'package:flutter/material.dart';
import 'package:flutter_application_1/ThemeMode/Theme_logic.dart';
import 'package:provider/provider.dart';

class ThemeHome extends StatelessWidget {
  const ThemeHome({super.key});

  @override
  Widget build(BuildContext context) {
    final themeLogic = Provider.of<ThemeLogic>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Toggle'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: themeLogic.changeToLight,
              child: const Text('Light Mode'),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: themeLogic.changeToDark,
              child: const Text('Dark Mode'),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: themeLogic.changeToSystem,
              child: const Text('System Mode'),
            ),
          ],
        ),
      ),
    );
  }
}
