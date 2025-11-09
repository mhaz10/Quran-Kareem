import 'package:flutter/material.dart';
import 'package:quran_kareem/core/helper/responsive/extensions/size_helper_extension.dart';
import 'package:quran_kareem/core/theme/app_text_styles.dart';
import 'package:quran_kareem/features/home/views/widgets/all_categories_gridview.dart';
import 'package:quran_kareem/features/home/views/widgets/allmedia_listview.dart';
import 'package:quran_kareem/features/home/views/widgets/prayer_time_card.dart';

import '../../../../core/helper/spacing.dart';

class CategorySelection extends StatefulWidget {
  const CategorySelection({super.key});

  @override
  State<CategorySelection> createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> {
  int _currentIndex = 0;

  final List<String> categories = const [
    'جميع التصنيفات',
    'كل الوسائط',
    'أوقات الصلاة'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: context.setWidth(350),
          height: context.setHeight(50),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSurface,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: categories.map((e) {
                bool isActive = _currentIndex == categories.indexOf(e);
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = categories.indexOf(e);
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      padding: const EdgeInsets.all(4),
                      width: context.setWidth(110),
                      height: context.setHeight(36),
                      decoration: BoxDecoration(
                        color: isActive ? Theme.of(context).colorScheme.onPrimary : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(e, style: AppTextStyles.amiri14(context).copyWith(
                        color:  Theme.of(context).colorScheme.onSecondaryContainer,
                      ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        verticalSpace(20, context),
        IndexedStack(
          index: _currentIndex,
          children: [
            AllCategoriesGridview(),
            AllMediaListview(),
            PrayerTimeCard()
          ],
        )
      ],
    );
  }
}
