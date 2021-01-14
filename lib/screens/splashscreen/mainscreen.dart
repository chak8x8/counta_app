import 'package:flutter/material.dart';
import 'dart:async';
import 'package:counta_app/screens/splashscreen/loadingscreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoadingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Live minimally", textScaleFactor: 3.0,),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 8.0),
              child: Container(
                width: 10.0,
                height: 10.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
