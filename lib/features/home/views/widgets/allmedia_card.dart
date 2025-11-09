import 'package:flutter/material.dart';
import 'package:quran_kareem/core/helper/responsive/extensions/size_helper_extension.dart';
import 'package:quran_kareem/core/theme/app_colors.dart';
import 'package:quran_kareem/core/theme/app_fonts.dart';
import 'package:quran_kareem/core/theme/app_text_styles.dart';
import 'package:quran_kareem/features/home/data/models/allmedia_model.dart';

import '../../../../core/utils/app_images.dart';

class AllMediaCard extends StatelessWidget {
  const AllMediaCard({super.key, required this.allMediaModel});

  final AllMediaModel allMediaModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.setWidth(350),
      height: context.setHeight(85),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.background),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            allMediaModel.color,
            BlendMode.multiply,
          )
      ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(allMediaModel.title, style: AppTextStyles.amiri16(context).copyWith(
              color: AppColors.grey0,
              fontFamily: AppFonts.almarai
            ),),
            Text(allMediaModel.description, style: AppTextStyles.amiri13(context).copyWith(
                color: AppColors.grey400,
                fontFamily: AppFonts.almarai
            ),),
          ],
        ),
      ),
    );
  }
}
