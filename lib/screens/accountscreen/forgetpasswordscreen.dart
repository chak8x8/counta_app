import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Reset Password',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.clear),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 20.0),
              child: Text(
                'Forget your password?',
                style: TextStyle(
                  color: Color(0xff7D7E89),
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 20.0, right: 30.0, left: 30.0,),
              child: Text(
                'Enter email address you used to register with Counta. We’ll send you an email to reset your password.',
                style: TextStyle(
                  color: Color(0xff7D7E89),
                  fontSize: 13.0,
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
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5.0),
                ),
              ),
            ),
          ),
          ButtonTheme(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                primary: Colors.black,
                minimumSize: Size(300.0, 60.0),
              ),
              child: Text(
                'SUBMIT',
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
            ),
            // child: RaisedButton(
            //   onPressed: () {},
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(30.0)),
            //   child: Text(
            //     'LOGIN',
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   color: Colors.black,
            // ),
          ),
        ],
      ),
    );
  }
}
