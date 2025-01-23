import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_logic.dart';
import 'themeapp.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeLogic(),
      child: const ThemeApp(),
    ),
  );
}
