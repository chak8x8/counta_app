import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BorrowEmptyScreen extends StatefulWidget {
  @override
  _BorrowEmptyScreenState createState() => _BorrowEmptyScreenState();
}

class _BorrowEmptyScreenState extends State<BorrowEmptyScreen> {

  int segmentedControl = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Borrow',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: CupertinoSlidingSegmentedControl(
                  groupValue: segmentedControl,
                  children: const <int, Widget>{
                    0: Text('Search'),
                    1: Text('Borrowed'),
                  },
                  onValueChanged: (i){
                    setState(() {
                      segmentedControl = i;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50.0,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search',
                    filled: true,
                    fillColor: Colors.black12,
                    prefixIcon: Icon(Icons.search, color: Colors.grey,),
                  ),
                ),
              ),
            ),
            Container(
              width: 250.0,
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/emptystate.png'),
                )
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Add Friends to see their sharing items', style: TextStyle(color: Colors.black54, fontSize: 20.0,),),
            ),


          ],
        ),
      ),
    );
  }
}
