import 'package:flutter/material.dart';
import 'package:flutter_application_1/ThemeMode/Theme_logic.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/screens/MainScreen.dart'; // Your main screen

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeLogic(), // Provide ThemeLogic to the app
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final mode = context.watch<ThemeLogic>().mode;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FoodPandas",
      themeMode: mode, // Apply the theme mode
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: MainScreen(
        email: '',
      ), // Replace with your app's main screen
    );
  }
}
