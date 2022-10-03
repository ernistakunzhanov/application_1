import 'package:application_1/app_constants/colors/app_colors.dart';
import 'package:application_1/widgets/buttons/custom_text_button.dart';
import 'package:flutter/material.dart';
import '../app_constants/strings/app_string.dart';
import '../widgets/app_bars/custom_app_bar.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key, this.number}) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: const CustomAppBar(
        title: AppString.tapshyrma02,
      ),
      body: Center(
        child: CustomTextButton(
          number: number,
          onTap: null,
          bgColor: AppColors.grey,
        ),
      ),
    );
  }
}
