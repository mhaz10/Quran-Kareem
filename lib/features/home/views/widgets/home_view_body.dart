import 'package:flutter/material.dart';
import 'package:quran_kareem/core/helper/responsive/extensions/size_helper_extension.dart';
import 'package:quran_kareem/core/helper/spacing.dart';
import 'package:quran_kareem/core/theme/app_text_styles.dart';
import 'package:quran_kareem/core/utils/app_icons.dart';
import 'package:quran_kareem/core/utils/app_images.dart';
import 'package:quran_kareem/features/home/views/widgets/custom_salahtime.dart';
import 'package:quran_kareem/features/home/views/widgets/quran_card.dart';

import 'custom_appbar.dart';
import 'custom_slider.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          verticalSpace(40, context),
          CustomAppbar(),
          verticalSpace(20, context),
          CustomSalahTime(),
          verticalSpace(24, context),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('سورة الفاتحة', style: AppTextStyles.amiri14(context),),
              Text('الآيات اليومية', style: AppTextStyles.amiri16(context),)
            ],
          ),
          verticalSpace(10, context),
          CustomSlider()
        ],
      ),
    );
  }
}
