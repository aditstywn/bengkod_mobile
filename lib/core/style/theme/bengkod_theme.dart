import 'package:flutter/material.dart';

import '../../config/app_color.dart';

class BengkodTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      colorSchemeSeed: AppColors.primary,
      scaffoldBackgroundColor: AppColors.background,
      brightness: Brightness.light,
      appBarTheme: _appBarTheme,
      useMaterial3: true,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      colorSchemeSeed: AppColors.primary,
      scaffoldBackgroundColor: AppColors.background,
      brightness: Brightness.dark,
      appBarTheme: _appBarTheme,
      useMaterial3: true,
    );
  }

  static AppBarTheme get _appBarTheme {
    return const AppBarTheme(
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.primary,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.primary,
      ),
      centerTitle: true,
    );
  }
}
