import 'package:flutter/material.dart';
import 'package:form/Exercise_1.dart';
import 'package:form/home_page.dart';

void main() {
  runApp(MyApp());

  var name = Exercise();
  name.printName();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HNGi8',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
