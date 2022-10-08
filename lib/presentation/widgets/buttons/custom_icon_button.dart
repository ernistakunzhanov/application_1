import 'package:application_1/app_constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Color iconBgColor;
  const CustomIconButton({
    @required this.onPressed,
    @required this.icon,
    this.iconBgColor,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Icon(icon),
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        elevation: 1,
        primary: iconBgColor ?? AppColors.secondaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 11),
      ),
    );
  }
}
