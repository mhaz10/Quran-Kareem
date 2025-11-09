import 'package:flutter/material.dart';
import 'package:quran_kareem/core/helper/responsive/extensions/size_helper_extension.dart';
import 'package:quran_kareem/core/helper/spacing.dart';
import 'package:quran_kareem/core/theme/app_colors.dart';
import 'package:quran_kareem/core/theme/app_text_styles.dart';
import 'package:quran_kareem/features/home/data/models/quran_card_model.dart';

class QuranCard extends StatelessWidget {
  const QuranCard({super.key, required this.quranCardModel});

  final QuranCardModel quranCardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.setWidth(350),
      height: context.setHeight(180),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.quranCard,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              quranCardModel.ayah,
              textAlign: TextAlign.center,
              style: AppTextStyles.amiri24(context),
            ),
          ),
          const SizedBox(height: 12),
          if (quranCardModel.description != null)
          Expanded(
            child: Text(
              quranCardModel.description!,
              textAlign: TextAlign.start,
              textDirection: quranCardModel.isArabic ? TextDirection.rtl : TextDirection.ltr,
              style: AppTextStyles.amiri16(context).copyWith(color: AppColors.darkPrimary),
            ),
          ),
          if(quranCardModel.audio != null)
          Expanded(
            child: Container(
              width: context.setWidth(330),
              height: context.setHeight(75),
              decoration: BoxDecoration(
                color: AppColors.quranCardPlay,
                borderRadius: BorderRadius.circular(25)
              ),
              child: Row(
                children: [
                  horizontalSpace(18, context),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(quranCardModel.audio!.image)
                      )
                    ),
                  ),
                  horizontalSpace(18, context),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('قم بتشغيل الآية', style: AppTextStyles.amiri14(context).copyWith(color: AppColors.darkPrimary)),
                        verticalSpace(5, context),
                        Text('القارئ الشيخ مشاري راشد العفاسي', style: AppTextStyles.amiri10(context).copyWith(color: AppColors.darkPrimary))
                      ],
                    ),
                  ),
                  horizontalSpace(18, context),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Theme.of(context).colorScheme.onPrimary,
                    child: Icon(Icons.play_arrow, color: AppColors.darkPrimary),
                  ),
                  horizontalSpace(18, context),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              quranCardModel.label,
              style: AppTextStyles.amiri8(context),
            ),
          ),
        ],
      ),
    );
  }
}
