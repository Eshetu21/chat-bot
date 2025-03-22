import 'package:chat_bot/on_boarding.dart';
import 'package:chat_bot/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightThemeMode,
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}

