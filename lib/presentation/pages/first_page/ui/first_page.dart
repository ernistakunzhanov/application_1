import 'dart:developer';
import 'dart:math';

import 'package:application_1/app_constants/strings/app_string.dart';
import 'package:application_1/app_constants/text_styles/app_text_styles.dart';
import 'package:application_1/presentation/pages/first_page/cubit/counter_cubit.dart';
import 'package:application_1/presentation/pages/first_page/cubit/first_page_cubit.dart';
import 'package:application_1/presentation/pages/second_page/ui/second_page.dart';
import 'package:application_1/presentation/widgets/buttons/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app_constants/colors/app_colors.dart';
import '../../../widgets/app_bars/custom_app_bar.dart';
import '../../../widgets/buttons/custom_text_button.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(
        title: AppString.tapshyrma01,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterCubit, int>(builder: ((context, state) {
            return CustomTextButton(
              number: state,
              bgColor: AppColors.mainColor,
              textStyle: AppTextStyles.buttonText,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlocProvider(
                    create: (context) => FirstPageCubit(state),
                    child: const SecondPage(),
                  ),
                ),
              ),
            );
          })),
          const SizedBox(height: 54),
          BlocBuilder<FirstPageCubit, FirstPageState>(
            builder: (context, state) {
              if (state is FirstPageInitial) {
                return const Text(
                  'FirstPageInitial',
                  style: AppTextStyles.appBarTextStyle,
                );
              }

              if (state is FirstPositive) {
                return Column(
                  children: [
                    const Text(
                      'POSITIVE',
                      style: AppTextStyles.appBarTextStyle,
                    ),
                    const SizedBox(height: 24),
                    CustomTextButton(
                      number: state.number,
                      bgColor: AppColors.mainColor,
                      textStyle: AppTextStyles.buttonText,
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlocProvider(
                            create: (context) => FirstPageCubit(state.number),
                            child: const SecondPage(),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }

              if (state is FirstNegative) {
                return Column(
                  children: [
                    const Text(
                      'NEGATIVE',
                      style: AppTextStyles.appBarTextStyle,
                    ),
                    const SizedBox(height: 24),
                    CustomTextButton(
                      number: state.number,
                      bgColor: AppColors.secondaryColor,
                      textStyle: AppTextStyles.buttonText,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlocProvider(
                              create: (context) => FirstPageCubit(state.number),
                              child: const SecondPage(),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                );
              }

              return const SizedBox.shrink();
            },
          ),
          const SizedBox(height: 38.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                onPressed: () {
                  context.read<CounterCubit>().decrement();

                  context.read<FirstPageCubit>().changeNumber(false);
                },
                icon: Icons.remove,
              ),
              const SizedBox(width: 28.0),
              CustomIconButton(
                onPressed: () {
                  context.read<CounterCubit>().increment();

                  context.read<FirstPageCubit>().changeNumber(true);
                },
                icon: Icons.add,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _changeNumber(bool _isAdd) {
    if (_isAdd) {
      setState(() {
        _number++;
      });
    } else {
      setState(() {
        _number--;
      });
    }
  }
}
