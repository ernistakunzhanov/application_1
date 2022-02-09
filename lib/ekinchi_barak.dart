import 'package:flutter/material.dart';

class EkinchiBarak extends StatelessWidget {
  const EkinchiBarak({Key key, this.kelgenSan}) : super(key: key);

  final String kelgenSan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text(
          'Тапшырма 02',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffF5F7FA),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 120.0, vertical: 15.0),
            child: Text(
              'сан: $kelgenSan',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
