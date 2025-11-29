


import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_fonts.dart';

class AppThemes{
  static final  lightTheme = ThemeData(
    primaryColor:  AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.whiteColor,
    fontFamily: AppFonts.mainFontName,
    textTheme:  TextTheme(
     titleLarge: AppStyles.mainTextStyle,
      titleMedium: AppStyles.subTextStyle,

    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      disabledColor: AppColors.secondaryColor,
    ),
  );
}