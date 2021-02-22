import 'package:flutter/material.dart';

class LoginSuccessfullyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Confirmed Login', style: TextStyle(color: Colors.grey, fontSize: 20.0),),
            Icon(Icons.check, color: Color(0xff38D4B1),),
          ],
        ),
      ),
    );
  }
}
