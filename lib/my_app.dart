import 'package:application_1/birinchi_barak.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: EkinchiBarak(),
      home: BirinchiBarak(),
    );
  }
}
