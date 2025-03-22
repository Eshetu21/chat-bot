import 'package:chat_bot/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightThemeMode = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    textTheme: ThemeData.light().textTheme.apply(
      bodyColor: AppPallete.textColor,
      fontFamily: 'ProductSans',
    ),
  );
}

