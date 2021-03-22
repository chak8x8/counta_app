import 'package:counta_app/screens/accountscreen/createscreen.dart';
import 'package:counta_app/screens/carouselscreen/carouselscreen.dart';
import 'package:counta_app/screens/homescreen/homescreen.dart';
import 'package:counta_app/screens/menu/menuitems.dart';
import 'package:flutter/material.dart';
import 'package:counta_app/screens/splashscreen/mainscreen.dart';
import 'package:counta_app/screens/introductionscreen/introductionscreen.dart';
import 'package:counta_app/screens/loginscreen//loginscreen.dart';
import 'package:counta_app/screens/loginscreen//loginsuccessfullyscreen.dart';
import 'package:counta_app/screens/splashscreen/onboardingscreen.dart';
import 'package:counta_app/screens/inventoryscreen/inventoryscreen.dart';

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
      home: MenuItems(),
    );
  }
}


