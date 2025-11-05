import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quran_kareem/core/helper/responsive/extensions/size_helper_extension.dart';
import 'package:quran_kareem/core/theme/app_colors.dart';
import 'package:quran_kareem/features/home/data/models/quran_card_model.dart';
import 'package:quran_kareem/features/home/views/widgets/quran_card.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  int _currentIndex = 0;
  
  List<QuranCardModel> quranCardModels = [
    QuranCardModel(ayah: 'ٱلْـحَمْدُ لِلَّهِ رَبِّ ٱلْعَـٰلَمِينَ', label: 'سورة الفاتحة - الجزء الثلاثون  - آية ١' ,description: 'All praise and thanks be to the Lord of the worlds.'),
    QuranCardModel(ayah:'ٱلْـحَمْدُ لِلَّهِ رَبِّ ٱلْعَـٰلَمِينَ', label: 'المختصر في التفسير' ,description: 'الثناء الكامل، وجميع أنواع المحامد من صفات الجلال والكمال هي لله وحده دون من سواه؛ إذ هو رب كل شيء وخالقه ومدبره.والعالمون جمع عالَم، وهم كل ما سوى الله تعالى.', isArabic: true),
    QuranCardModel(ayah: 'ٱلْـحَمْدُ لِلَّهِ رَبِّ ٱلْعَـٰلَمِينَ', label: 'القارئ مشاري راشد العفاي' ,audio: Audio(image: 'assets/images/Mishary_Rashid_Alafasy.jpg', name: 'القارئ الشيخ مشاري راشد العفاسي'))
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: quranCardModels.length,
          options: CarouselOptions(
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            viewportFraction: 1,
            aspectRatio: 15 / 9,
            reverse: true,
            autoPlay: false,
            onPageChanged: (index, reason) {
              setState(() => _currentIndex = index);
            },
          ),
          itemBuilder: (context, index, realIndex) {
            final item = quranCardModels[index];
            return QuranCard(
              quranCardModel: quranCardModels[index],
            );
          },
        ),
        const SizedBox(height: 20),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: quranCardModels.map((entry) {
              bool isActive = _currentIndex == quranCardModels.indexOf(entry);
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: isActive ? 28 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: isActive ? Theme.of(context).colorScheme.onSurface : Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(8),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    )
    ;
  }
}
