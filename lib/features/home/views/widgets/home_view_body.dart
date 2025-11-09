import 'package:flutter/material.dart';
import 'package:quran_kareem/core/helper/spacing.dart';
import 'package:quran_kareem/core/theme/app_text_styles.dart';
import 'package:quran_kareem/features/home/views/widgets/prayer_time_card.dart';
import 'allmedia_listview.dart';
import 'category_selection.dart';
import 'custom_appbar.dart';
import 'custom_salahtime.dart';
import 'custom_slider.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
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
            CustomSlider(),
            verticalSpace(28, context),
            CategorySelection(),
            verticalSpace(20, context),
          ],
        ),
      ),
    );
  }
}
