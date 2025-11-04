import 'package:flutter/cupertino.dart';
import 'package:quran_kareem/core/helper/responsive/extensions/size_helper_extension.dart';

SizedBox verticalSpace(double height, BuildContext context) => SizedBox(height: context.setHeight(height));

SizedBox horizontalSpace(double width, BuildContext context) => SizedBox(width: context.setWidth(width));