import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppFonts {
  static const heading_1 = TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      fontFamily: "Dana",
      color: AppColors.primaryColor);

  static const heading_2 = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      fontFamily: "Dana",
      color: AppColors.primaryColor);

  static const heading_3 = TextStyle(
      fontSize: 18,
      fontFamily: "Dana",
      fontWeight: FontWeight.w700,
      color: AppColors.primaryColor);

  static const subtitle = TextStyle(
      fontSize: 16,
      fontFamily: "Yekan",
      fontWeight: FontWeight.w400,
      color: AppColors.black);

  static const body_bold = TextStyle(
      fontSize: 14,
      fontFamily: "Yekan",
      fontWeight: FontWeight.w700,
      color: AppColors.black);

  static const body = TextStyle(
      fontSize: 14,
      fontFamily: "Yekan",
      fontWeight: FontWeight.w400,
      color: AppColors.black);

  static const caption = TextStyle(
      fontSize: 12,
      fontFamily: "Yekan",
      fontWeight: FontWeight.w400,
      color: AppColors.black);

  static const buttonText = TextStyle(
    fontSize: 16,
    fontFamily: "Yekan",
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );

  static const text = TextStyle(
    fontSize: 12,
    fontFamily: "Yekan",
    fontWeight: FontWeight.w700,
    color: Color(0xFF444444),
  );
}
