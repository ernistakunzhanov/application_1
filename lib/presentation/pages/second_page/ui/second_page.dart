import 'package:application_1/app_constants/colors/app_colors.dart';
import 'package:application_1/app_constants/text_styles/app_text_styles.dart';
import 'package:application_1/presentation/pages/first_page/cubit/first_page_cubit.dart';
import 'package:application_1/presentation/widgets/buttons/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../app_constants/strings/app_string.dart';
import '../../../widgets/app_bars/custom_app_bar.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(
        title: AppString.tapshyrma02,
      ),
      body: Center(
        child: CustomTextButton(
          onTap: null,
          number: context.read<FirstPageCubit>().number,
          bgColor: AppColors.grey,
          textStyle: AppTextStyles.buttonText.copyWith(
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
