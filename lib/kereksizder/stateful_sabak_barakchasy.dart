import 'package:flutter/material.dart';

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
        title: const Center(
            child: Text(
          'header',
          style: TextStyle(fontSize: 43.0),
        )),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.greenAccent,
        child: const Center(
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
            children: const [
              Text(
                'footer',
                style: TextStyle(fontSize: 42.0),
              ),
            ],
          ))),
    );
  }
}
