
import 'package:flutter/material.dart';

import '../styling/app_color.dart';
import '../styling/app_styles.dart';

class CustomMainText extends StatelessWidget {

  final String? mainText;
  final Color?  textColor;
  final double? fontSize;
  final FontWeight? fontWeight;

  const CustomMainText({super.key,  this.mainText,  this.textColor, this.fontSize, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return  Text(mainText ??'',
      style:AppStyles.mainTextStyle,
    );
  }
}
