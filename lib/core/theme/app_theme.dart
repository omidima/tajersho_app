import 'package:flutter/material.dart';
import 'package:tajersho/core/theme/app_fonts.dart';

import 'app_colors.dart';

final ThemeData appLightTheme = ThemeData(fontFamily: "Dana").copyWith(
  primaryColor: AppColors.primaryColor,
  primaryIconTheme: IconThemeData().copyWith(color: AppColors.primaryColor),
  colorScheme: ColorScheme.light().copyWith(
    primary: AppColors.primaryColor,
    secondary: AppColors.secondryColor,
    background: Colors.white,
    onError: AppColors.thriedColor,
  ),
);


final ThemeData appDarkTheme = ThemeData(fontFamily: "Dana").copyWith(
  primaryColor: AppColors.primaryColor,
  primaryIconTheme: IconThemeData().copyWith(color: AppColors.primaryColor),
  colorScheme: ColorScheme.light().copyWith(
    primary: AppColors.primaryColor,
    secondary: AppColors.secondryColor,
    background: Colors.white,
    onError: AppColors.thriedColor,
  ),
);
