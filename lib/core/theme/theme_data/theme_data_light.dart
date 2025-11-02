import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_fonts.dart';
import '../app_text_styles.dart';

ThemeData getLightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.lightBackground,
    brightness: Brightness.light,
    fontFamily: AppFonts.amiri,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.lightPrimary,
      brightness: Brightness.light,
    ),
    textTheme: ThemeData.light().textTheme.apply(
      bodyColor: AppColors.grey900,
      displayColor: AppColors.grey900,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.lightPrimary,
        foregroundColor: AppColors.grey0,
        disabledBackgroundColor: AppColors.grey100,
        disabledForegroundColor: AppColors.grey0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: AppTextStyles.amiri16,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.grey100,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.grey100,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: AppColors.lightPrimary,
        ),
      ),
      hintStyle: AppTextStyles.amiri16.copyWith(color: AppColors.grey400),
    ),
  );
}