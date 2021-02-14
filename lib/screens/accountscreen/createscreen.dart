import 'package:flutter/material.dart';

class CreateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account', style: TextStyle(color: Colors.black,),),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 8.0, bottom: 8.0,),
            child: TextFormField(
              decoration: InputDecoration(hintText: 'First Name',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 5.0),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 8.0, bottom: 8.0,),
            child: TextFormField(
              decoration: InputDecoration(hintText: 'Last Name',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5.0),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 8.0, bottom: 8.0,),
            child: TextFormField(
              decoration: InputDecoration(hintText: 'Gender',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5.0),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 8.0, bottom: 8.0,),
            child: TextFormField(
              decoration: InputDecoration(hintText: 'Email',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5.0),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 8.0, bottom: 8.0,),
            child: TextFormField(
              decoration: InputDecoration(hintText: 'Enter Password',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5.0),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 8.0, bottom: 8.0,),
            child: TextFormField(
              decoration: InputDecoration(hintText: 'Confirm Password',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5.0),),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          ButtonTheme(
            minWidth: 290.0,
            height: 60.0,
            child: RaisedButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: Text('Create Account', style: TextStyle(color: Colors.white),),
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
