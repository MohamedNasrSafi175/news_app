import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      primary: AppColors.white,
      secondary: AppColors.black,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: .w500,
        color: AppColors.black,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 26,
        fontWeight: .w500,
        color: AppColors.white,
      ),
      titleMedium: TextStyle(
        fontSize: 24,
        fontWeight: .w500,
        color: AppColors.black,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: .w500,
        color: AppColors.black,
      ),
      // title in drawer
      bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: .w700,
        color: AppColors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: .w700,
        color: AppColors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        fontWeight: .w500,
        color: AppColors.black,
      ),
      displayLarge: TextStyle(
        fontSize: 14,
        fontWeight: .w500,
        color: AppColors.white,
      ),
      displayMedium: TextStyle(
        fontSize: 12,
        fontWeight: .w500,
        color: AppColors.gray,
      ),
    ),
  );

  static ThemeData darkTheme =ThemeData(
    scaffoldBackgroundColor: AppColors.black,
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      primary: AppColors.black,
      secondary: AppColors.white,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: .w500,
        color: AppColors.white,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 26,
        fontWeight: .w500,
        color: AppColors.black,
      ),
      titleMedium: TextStyle(
        fontSize: 24,
        fontWeight: .w500,
        color: AppColors.white,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: .w500,
        color: AppColors.white,
      ),
      // title in drawer
      bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: .w700,
        color: AppColors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: .w700,
        color: AppColors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        fontWeight: .w500,
        color: AppColors.white,
      ),
      displayLarge: TextStyle(
        fontSize: 14,
        fontWeight: .w500,
        color: AppColors.black,
      ),
      displayMedium: TextStyle(
        fontSize: 12,
        fontWeight: .w500,
        color: AppColors.gray,
      ),
    ),
  );
}
