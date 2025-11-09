import 'package:flutter/cupertino.dart';
import 'package:quran_kareem/features/home/data/models/allmedia_model.dart';
import 'package:quran_kareem/features/home/views/widgets/allmedia_card.dart';

import '../../../../core/helper/spacing.dart';

class AllMediaListview extends StatelessWidget {
  const AllMediaListview({super.key});

  final List<AllMediaModel> allMedia =  const [
    AllMediaModel(title: 'المقالات', description: 'قم بتصفح المقالات الدينية من هنا', color: Color(0xff284E46)),
    AllMediaModel(title: 'الصوتيات', description: 'استمع الي المساند والمحاضرات الصوتية من هنا', color: Color(0xff323232)),
    AllMediaModel(title: 'الفيديوهات', description: 'عرض الفيديوهات الدينية من هنا', color: Color(0xff783E3E)),
    AllMediaModel(title: 'الخطب', description: 'شاهد الخطب الدينية كلها من هنا', color: Color(0xff463E78)),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => AllMediaCard(allMediaModel: allMedia[index]),
        separatorBuilder: (context, index) =>  verticalSpace(10, context),
        itemCount: allMedia.length
    );
  }
}
