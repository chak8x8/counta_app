import 'package:counta_app/screens/homescreen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:counta_app/screens/splashscreen/mainscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counta',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}


