import 'package:flutter/material.dart';
import 'package:quran_kareem/core/theme/app_colors.dart';
import 'package:quran_kareem/core/theme/app_text_styles.dart';
import 'package:quran_kareem/core/utils/app_images.dart';
import 'package:quran_kareem/features/home/data/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;
  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(12),
        border: BorderDirectional(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.onSurface,
            width: 5
          )
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(category.image, width: 60, height: 60,),
          const SizedBox(height: 8),
          Text(
            category.title,
            textAlign: TextAlign.center,
            style: AppTextStyles.amiri14(context),
            textDirection: TextDirection.rtl,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
