import 'package:flutter/material.dart';
import 'package:flutter_application_1/ThemeMode/theme_logic.dart';
import 'package:flutter_application_1/ThemeMode/theme_home.dart';
import 'package:provider/provider.dart';

class ThemeApp extends StatelessWidget {
  const ThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    final mode = context.watch<ThemeLogic>().mode;

    return MaterialApp(
      home: const ThemeHome(),
      themeMode: mode,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontStyle: FontStyle.italic),
          displayLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 18),
          bodyLarge: TextStyle(fontSize: 15),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.lime,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontStyle: FontStyle.italic),
          displayLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 18),
          bodyLarge: TextStyle(fontSize: 15),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueGrey.shade900,
        ),
      ),
    );
  }
}
