import 'package:counta_app/screens/accountscreen/createscreen.dart';
import 'package:counta_app/screens/carouselscreen/carouselscreen.dart';
import 'package:counta_app/screens/homescreen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:counta_app/screens/splashscreen/mainscreen.dart';
import 'package:counta_app/screens/introductionscreen/introductionscreen.dart';

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
      home: CreateScreen(),
    );
  }
}


