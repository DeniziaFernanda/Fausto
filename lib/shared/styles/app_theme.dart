import 'package:flutter/material.dart';
import 'colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary['light']?[100],
    scaffoldBackgroundColor: AppColors.surface['light']?[100],
    colorScheme: ColorScheme.light(
      primary: AppColors.primary['light']![100]!,
      primaryContainer: AppColors.primary['light']?[40]!,
      secondary: AppColors.secondary['light']![100]!,
      secondaryContainer: AppColors.secondary['light']?[40]!,
      surface: AppColors.surface['light']![100]!,
      error: AppColors.error['light']![100]!,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: AppColors.text['light']![100]!,
      onError: Colors.white,
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColors.text['light']?[100],
      ),
      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.text['light']?[80],
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: AppColors.text['light']?[80],
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: AppColors.text['light']?[60],
      ),
      // ... outros estilos de texto
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.surface['light']?[100],
      titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.text['light']?[100],
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary['dark']?[100],
    scaffoldBackgroundColor: AppColors.surface['dark']?[100],
    colorScheme: ColorScheme.dark(
      primary: AppColors.primary['dark']![100]!,
      primaryContainer: AppColors.primary['dark']?[40]!,
      secondary: AppColors.secondary['dark']![100]!,
      secondaryContainer: AppColors.secondary['dark']?[40]!,
      surface: AppColors.surface['dark']![100]!,
      error: AppColors.error['dark']![100]!,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: AppColors.text['dark']![100]!,
      onError: Colors.white,
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColors.text['dark']?[100],
      ),
      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.text['dark']?[80],
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: AppColors.text['dark']?[80],
      ),
      bodyLarge: TextStyle(fontSize: 16, color: AppColors.text['dark']?[60]),
      // ... outros estilos de texto
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.surface['dark']?[100],
      titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.text['dark']?[100],
      ),
    ),
  );
}
