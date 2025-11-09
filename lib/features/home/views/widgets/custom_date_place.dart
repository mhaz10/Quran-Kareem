import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/utils/app_icons.dart';

class CustomDateAndPlace extends StatelessWidget {
  const CustomDateAndPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              children: [
                Icon(AppIcons.calendar, size: 24,),
                horizontalSpace(10, context),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('12 الثلاثاء ديسمبر 2024', style: AppTextStyles.amiri12(context)),
                    Text('الأحد ربيع الأول 1445', style: AppTextStyles.amiri15(context))
                  ],
                )
              ],
            ),
          ),
          horizontalSpace(24, context),
          Flexible(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                children: [
                  Icon(AppIcons.arrowDown, color: Theme.of(context).colorScheme.onTertiary, size: 16,),
                  Icon(AppIcons.location, size: 24,),
                  horizontalSpace(10, context),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('المكان', style: AppTextStyles.amiri12(context)),
                      Text('القاهرة، مصر', style: AppTextStyles.amiri15(context))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}