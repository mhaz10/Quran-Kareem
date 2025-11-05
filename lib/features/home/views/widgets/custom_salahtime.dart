import 'package:flutter/material.dart';
import 'package:quran_kareem/core/helper/responsive/extensions/size_helper_extension.dart';
import 'package:quran_kareem/core/theme/app_colors.dart';
import 'package:quran_kareem/core/theme/app_fonts.dart';
import 'package:quran_kareem/core/theme/extensions/theme_extension.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/utils/app_images.dart';

class CustomSalahTime extends StatelessWidget {
  const CustomSalahTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.setWidth(345),
      height: context.setHeight(132),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          colorFilter: context.isDarkMode ? ColorFilter.mode(AppColors.darkPaje, BlendMode.multiply) : null,
          image: AssetImage(AppImages.salahTimeBackground),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(6, context),
          Text('الظهر', style: AppTextStyles.amiri13(context),),
          Row(
            children: [
              Text('م', style: AppTextStyles.amiri13(context),),
              Text('11:45', style: AppTextStyles.amiri32(context).copyWith(color: Theme.of(context).colorScheme.onSurface, fontFamily: AppFonts.almarai),),
            ],
          ),
          Text('الصلاة التالية: العصر', style: AppTextStyles.amiri13(context),),
          Text('2:50 مساءً', style: AppTextStyles.amiri13(context).copyWith(fontWeight: FontWeight.bold), textDirection: TextDirection.rtl,),
        ],
      ),
    );
  }
}
