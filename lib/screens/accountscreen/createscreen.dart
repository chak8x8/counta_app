import 'package:flutter/material.dart';

class CreateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(hintText: 'First Name',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 5.0),),
              ),
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(hintText: 'Last Name'),
          ),
          TextFormField(
            decoration: const InputDecoration(hintText: 'Gender'),
          ),
          TextFormField(
            decoration: const InputDecoration(hintText: 'Email'),
          ),
          TextFormField(
            decoration: const InputDecoration(hintText: 'Enter Password'),
          ),
          TextFormField(
            decoration: const InputDecoration(hintText: 'Confirm Password'),
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
    );
  }
}
