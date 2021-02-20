import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:counta_app/screens/accountscreen/forgetpasswordscreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Login',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 20.0),
                child: Text(
              'Welcome Back',
              style: TextStyle(
                color: Color(0xff7D7E89),
                fontSize: 20.0,
              ),
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
              left: 20.0,
              top: 8.0,
              bottom: 8.0,
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
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
              left: 20.0,
              top: 8.0,
              bottom: 50.0,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
                suffixIcon: Icon(
                  Icons.help_outline,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5.0),
                ),
              ),
            ),
          ),
          ButtonTheme(
            minWidth: 290.0,
            height: 60.0,
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Text(
                'LOGIN',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.black,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
              );
            },
            child: Text('Forgot Password?'),
          ),
        ],
      ),
    );
  }
}
