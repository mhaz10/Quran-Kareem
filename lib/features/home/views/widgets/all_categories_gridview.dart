import 'package:flutter/material.dart';
import 'package:quran_kareem/core/utils/app_images.dart';

import '../../data/models/category_model.dart';
import 'category_card.dart';

class AllCategoriesGridview extends StatelessWidget {
  const AllCategoriesGridview({super.key});

   final List<CategoryModel> categories = const [
    CategoryModel(image: AppImages.prayers, title: 'الأدعية'),
    CategoryModel(image: AppImages.praise, title: 'التسبيح الالكتروني'),
    CategoryModel(image: AppImages.asmaaAllah, title: 'أسماء الله الحسني'),
    CategoryModel(image: AppImages.quran, title: 'القرأن'),
    CategoryModel(image: AppImages.remembrances, title: 'الأذكار'),
    CategoryModel(image: AppImages.hadiths, title: 'الأحاديث'),
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 12,
          crossAxisSpacing: 16,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
