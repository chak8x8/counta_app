
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(BooksMainScreen());
}

class BooksMainScreen extends StatefulWidget {
  @override
  _BooksMainScreen createState() => _BooksMainScreen();
}

class _BooksMainScreen extends State<BooksMainScreen> {

  String _selectedValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Segmented Control")),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 500.0,
                  child: CupertinoSlidingSegmentedControl(
                    children: {
                      'Home': Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(1)),
                          color: _selectedValue == 'Home'
                              ? Colors.white
                              : Color(0xffefeef3),
                        ),
                        child: Center(
                          child: Text('Home(4)'),
                        ),
                      ),
                      'Away': Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(1)),
                          color: _selectedValue == 'Away'
                              ? Colors.white
                              : Color(0xffefeef3),
                        ),
                        child: Center(
                          child: Text('Away(2)'),
                        ),
                      ),
                    },
                    onValueChanged: (value) {
                      setState(() {
                        _selectedValue = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 30),
                _selectedValue != null
                    ? Text(
                  _selectedValue,
                  style: TextStyle(fontSize: 50),
                )
                    : Container()
              ],
            ),
          ),
        ));
  }
}