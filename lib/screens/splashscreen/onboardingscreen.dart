import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://picsum.photos/250?image=9'),
            Text('Welcome'),
            Text('Something'),
            ButtonTheme(
              minWidth: 200.0,
              height: 40.0,
              child: RaisedButton(
                onPressed: (){},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                child: Text('Log In', style: TextStyle(color: Colors.white),),
                color: Colors.black,
              ),
            ),
            ButtonTheme(
              minWidth: 200.0,
              height: 40.0,
              child: RaisedButton(
                onPressed: (){},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                child: Text('Create Account', style: TextStyle(color: Colors.white),),
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
