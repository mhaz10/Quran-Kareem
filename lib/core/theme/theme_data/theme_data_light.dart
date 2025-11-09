import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_fonts.dart';
import '../app_text_styles.dart';

ThemeData getLightTheme(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.lightBackground,
    brightness: Brightness.light,
    fontFamily: AppFonts.amiri,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.lightPrimary,
      onSurface: AppColors.lightPrimary,
      onSecondary: AppColors.lightCardContent,
      onPrimary: AppColors.lightPaje,
      onPrimaryContainer: AppColors.lightSecondary,
      onSecondaryContainer: AppColors.lightBackground,
      onTertiary: AppColors.lightCaptions,
      brightness: Brightness.light,
    ),
    textTheme: ThemeData.light().textTheme.apply(
      bodyColor: AppColors.grey900,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.lightPrimary,
      size: 24,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.lightBackground,
        foregroundColor: AppColors.grey900,
        maximumSize: Size(double.infinity, 42),
        minimumSize: Size(double.infinity, 42),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: AppColors.grey900,
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
          color: AppColors.lightPrimary,
        ),
      ),
      hintStyle: AppTextStyles.amiri16(context).copyWith(color: AppColors.grey400),
    ),
  );
}