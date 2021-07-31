import 'package:flutter/material.dart';

import 'bmi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "BMI Calculator Animation",
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: BMI(),
      ),
    );
  }
}
