import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
              left: 20.0,
              top: 8.0,
              bottom: 40.0,
            ),
            child: Text(
              'Email ',
              style: TextStyle(
                color: Colors.black12,
                fontSize: 13.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
              left: 20.0,
              top: 8.0,
              bottom: 40.0,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter New Password',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
              left: 20.0,
              top: 8.0,
              bottom: 40.0,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Confirm New Password',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5.0),
                ),
              ),
            ),
          ),
          ButtonTheme(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(
                    30.0,
                  ),
                ),
                primary: Colors.black,
                minimumSize: Size(300.0, 60.0),
              ),
              child: Text(
                'RESET PASSWORD',
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
