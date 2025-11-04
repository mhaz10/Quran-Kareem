import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_fonts.dart';
import '../app_text_styles.dart';

ThemeData getDarkTheme(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.darkBackground,
    brightness: Brightness.dark,
    fontFamily: AppFonts.amiri,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.darkPrimary,
      brightness: Brightness.dark,
    ),
    textTheme: ThemeData.dark().textTheme.apply(
      bodyColor: AppColors.darkPrimary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.darkBackground,
        foregroundColor: AppColors.darkPrimary,
        maximumSize: Size(double.infinity, 42),
        minimumSize: Size(double.infinity, 42),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
          color: AppColors.darkPrimary,
          width: 1,
        )
        ),
        textStyle: AppTextStyles.amiri16(context),
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
          color: AppColors.darkPrimary,
        ),
      ),
      hintStyle: AppTextStyles.amiri16(context).copyWith(color: AppColors.grey400),
    ),
  );
}