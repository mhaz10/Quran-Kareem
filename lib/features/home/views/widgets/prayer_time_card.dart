import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:quran_kareem/core/helper/responsive/extensions/size_helper_extension.dart';
import 'package:quran_kareem/core/helper/spacing.dart';
import 'package:quran_kareem/core/theme/app_fonts.dart';
import 'package:quran_kareem/core/theme/app_text_styles.dart';
import 'package:quran_kareem/features/home/views/widgets/custom_date_place.dart';

import '../../../../core/utils/app_icons.dart';

class PrayerTimeCard extends StatelessWidget {
  const PrayerTimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDateAndPlace(),
        verticalSpace(20, context),
        Container(
          width: context.setWidth(350),
          height: context.setHeight(215),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnalogClock(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary.withAlpha(102),
                    shape: BoxShape.circle,
                ),
                width: 125,
                height: 125,
                hourHandColor: Theme.of(context).colorScheme.onSurface,
                minuteHandColor: Theme.of(context).colorScheme.onSurface,
                showSecondHand: false,
                isLive: true,
                showNumbers: false,
                showTicks: false,
                showDigitalClock: false,
              ),
              verticalSpace(20, context),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('الوقت المتبقي', style: AppTextStyles.amiri12(context),),
                        Text(' لصلاة الظهر', style: AppTextStyles.amiri15(context),),
                      ],
                    ),
                    horizontalSpace(20, context),
                    Text('-04:55', style: AppTextStyles.amiri20(context).copyWith(
                      color: Theme.of(context).colorScheme.onTertiary,
                      fontFamily: AppFonts.almarai
                    ),)
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}



