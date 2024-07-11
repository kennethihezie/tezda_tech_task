import 'package:flutter/material.dart';
import 'color/app_colors.dart';

abstract class AppTheme {
  static ThemeData get defaultTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundDefault,
      appBarTheme: const AppBarTheme(
        color: AppColors.backgroundDefault,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme:
          ColorScheme.fromSeed(seedColor: AppColors.background),
    );
  }
}
