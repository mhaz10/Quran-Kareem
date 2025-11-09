import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran_kareem/core/helper/responsive/extensions/size_helper_extension.dart';
import 'app_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle amiri8(BuildContext context) => TextStyle(
    fontFamily: AppFonts.almarai,
    fontSize: context.setSp(8),
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: Theme.of(context).colorScheme.onSecondary,
  );

  static TextStyle amiri10(BuildContext context) => TextStyle(
    fontFamily: AppFonts.almarai,
    fontSize: context.setSp(10),
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
  );

  static TextStyle amiri12(BuildContext context) => TextStyle(
    fontFamily: AppFonts.almarai,
    fontSize: context.setSp(12),
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: Theme.of(context).colorScheme.onTertiary,
  );

  static TextStyle amiri13(BuildContext context) => TextStyle(
    fontFamily: AppFonts.almarai,
    fontSize: context.setSp(13),
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle amiri14(BuildContext context) => TextStyle(
    fontFamily: AppFonts.almarai,
    fontSize: context.setSp(14),
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle amiri15(BuildContext context) => TextStyle(
    fontFamily: AppFonts.almarai,
    fontSize: context.setSp(15),
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: Theme.of(context).colorScheme.onSurface,
  );

  static TextStyle amiri16(BuildContext context) => TextStyle(
    fontFamily: AppFonts.amiri,
    fontSize: context.setSp(16),
    fontWeight: FontWeight.normal,
    letterSpacing: 0.30,
  );

  static TextStyle amiri20(BuildContext context) => TextStyle(
    fontFamily: AppFonts.amiri,
    fontSize: context.setSp(20),
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
  );

  static TextStyle amiri24(BuildContext context) => TextStyle(
    fontFamily: AppFonts.amiri,
    fontSize: context.setSp(24),
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: Theme.of(context).colorScheme.onSecondary,
  );

  static TextStyle amiri32(BuildContext context) => TextStyle(
    fontFamily: AppFonts.amiri,
    fontSize: context.setSp(32),
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
  );
}
