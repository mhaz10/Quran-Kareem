import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/utils/app_icons.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(AppIcons.search),
        const Spacer(),
        Text('القرآن الكريم', style: AppTextStyles.amiri20(context).copyWith(
          color: Theme.of(context).colorScheme.onSurface,
        ),),
        const SizedBox(width: 16),
        const Icon(AppIcons.menu),
      ],
    );
  }
}
