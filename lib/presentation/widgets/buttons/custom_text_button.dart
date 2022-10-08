import 'package:application_1/app_constants/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../../../app_constants/colors/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  final int number;
  final GestureTapCallback onTap;
  final Color bgColor;
  final TextStyle textStyle;
  const CustomTextButton({
    @required this.number,
    @required this.onTap,
    this.bgColor,
    this.textStyle,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: bgColor ?? AppColors.mainColor,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 120.0,
            vertical: 15.0,
          ),
          child: Text(
            'cан: ${number.toString()}',
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
