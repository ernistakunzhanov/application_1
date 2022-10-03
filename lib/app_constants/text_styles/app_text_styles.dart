import 'package:application_1/app_constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  const AppTextStyles._();
  static const TextStyle appBarTextStyle = TextStyle(
    color: AppColors.black,
    fontSize: 20.0,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 22.0,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );
}
