import 'package:flutter/material.dart';
import 'package:application_1/my_app.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key key}) : super(key: key);

  @override
  StatefulSabakBarakchasy createState() => StatefulSabakBarakchasy();
}

class StatefulSabakBarakchasy extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'header',
          style: TextStyle(fontSize: 43.0),
        )),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.greenAccent,
        child: Center(
          child: Text(
            'body',
            style: TextStyle(fontSize: 42.0),
          ),
        ),
      ),
      bottomNavigationBar: Container(
          height: 50.0,
          color: Colors.redAccent,
          child: Center(
              child: Column(
            children: [
              Text(
                'footer',
                style: TextStyle(fontSize: 42.0),
              ),
            ],
          ))),
    );
  }
}
