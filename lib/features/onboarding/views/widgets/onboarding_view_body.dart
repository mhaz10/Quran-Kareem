import 'package:flutter/material.dart';
import 'package:quran_kareem/core/routes/app_route.dart';
import 'package:quran_kareem/core/routes/extensions/routing_extensions.dart';
import 'package:quran_kareem/core/routes/routes.dart';
import 'package:quran_kareem/core/theme/app_colors.dart';
import 'package:quran_kareem/core/theme/app_text_styles.dart';
import 'package:quran_kareem/core/utils/app_images.dart';
import '../../../../core/helper/spacing.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          verticalSpace(130, context),
          Image.asset(
            AppImages.onboardingImage,
          ),
          verticalSpace(20, context),
          Text(
            'تطبيق العبادات',
            style: AppTextStyles.amiri32(context),
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.end,
          ),
          verticalSpace(16, context),
          Text(
            'تعلم الدين الاسلامي عن طريق تصنيفات وملفات \n وشروحات ومحاضرات ٫٫الخ , يوفر أوقات الصلاة \n وخطب والقرآن الكريم كامل مع توفير تفسير وقراءة \n بالصوت ٫٫ اكتشف المزيد بنفسك',
            textDirection: TextDirection.rtl,
            style: AppTextStyles.amiri16(context),
          ),
          verticalSpace(20, context),
          ElevatedButton(
            onPressed: () {
              context.pushReplacementNamed(Routes.home);
            },
            child: Text('أبدأ الآن', style: AppTextStyles.amiri16(context)),
          ),
        ],
      ),
    );
  }
}
