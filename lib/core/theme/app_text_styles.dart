import 'package:flutter/cupertino.dart';
import 'package:quran_kareem/core/helper/responsive/extensions/size_helper_extension.dart';
import 'app_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle amiri16(BuildContext context) => TextStyle(
    fontFamily: AppFonts.amiri,
    fontSize: context.setSp(16),
    fontWeight: FontWeight.normal,
    letterSpacing: 0.30,
  );

  static TextStyle amiri32(BuildContext context) => TextStyle(
    fontFamily: AppFonts.amiri,
    fontSize: context.setSp(32),
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
  );
}
