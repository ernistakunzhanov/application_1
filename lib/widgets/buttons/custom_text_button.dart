import 'package:flutter/material.dart';
import '../../app_constants/colors/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  final int number;
  final GestureTapCallback onTap;
  final Color bgColor;
  const CustomTextButton({
    @required this.number,
    @required this.onTap,
    this.bgColor,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: bgColor ?? AppColors.lightBlue,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 120.0, vertical: 15.0),
          child: Text(
            'Сан:  ${number.toString()}',
            style: const TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
