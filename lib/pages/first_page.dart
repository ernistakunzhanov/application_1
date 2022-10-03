import 'package:application_1/app_constants/strings/app_string.dart';
import 'package:application_1/pages/second_page.dart';
import 'package:application_1/widgets/buttons/custom_icon_button.dart';
import 'package:flutter/material.dart';

import '../app_constants/colors/app_colors.dart';
import '../widgets/app_bars/custom_app_bar.dart';
import '../widgets/buttons/custom_text_button.dart';

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
      backgroundColor: AppColors.mainColor,
      appBar: const CustomAppBar(
        title: AppString.tapshyrma01,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextButton(
            number: _number,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(number: _number),
                  ));
            },
          ),
          const SizedBox(height: 38.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                onPressed: () => _changeNumber(false),
                icon: Icons.remove,
              ),
              const SizedBox(width: 28.0),
              CustomIconButton(
                onPressed: () => _changeNumber(true),
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
