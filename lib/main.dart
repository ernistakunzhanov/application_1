import 'package:application_1/presentation/pages/first_page/cubit/counter_cubit.dart';
import 'package:application_1/presentation/pages/first_page/cubit/first_page_cubit.dart';
import 'package:application_1/presentation/pages/first_page/ui/first_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => FirstPageCubit(0),
          ),
          BlocProvider(
            create: (context) => CounterCubit(),
          ),
        ],
        child: const FirstPage(),
      ),
    );
  }
}
