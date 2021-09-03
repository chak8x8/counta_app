import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BorrowScreen extends StatefulWidget {
  @override
  _BorrowScreenState createState() => _BorrowScreenState();
}

class _BorrowScreenState extends State<BorrowScreen> {

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
                height: 50,
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
            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Clothing'),
                  InkWell(
                      onTap: (){

                      },
                      child: Text('View all', style: TextStyle(color: Color(0xff38D4B1)),)),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget> [
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Books'),
                  InkWell(
                      onTap: (){

                      },
                      child: Text('View all', style: TextStyle(color: Color(0xff38D4B1)),)),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget> [
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Bed & Bath'),
                  InkWell(
                      onTap: (){

                      },
                      child: Text('View all', style: TextStyle(color: Color(0xff38D4B1)),)),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget> [
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Office'),
                  InkWell(
                      onTap: (){

                      },
                      child: Text('View all', style: TextStyle(color: Color(0xff38D4B1)),)),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget> [
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Kitchen'),
                  InkWell(
                      onTap: (){

                      },
                      child: Text('View all', style: TextStyle(color: Color(0xff38D4B1)),)),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget> [
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('General'),
                  InkWell(
                      onTap: (){

                      },
                      child: Text('View all', style: TextStyle(color: Color(0xff38D4B1)),)),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget> [
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Games'),
                  InkWell(
                      onTap: (){

                      },
                      child: Text('View all', style: TextStyle(color: Color(0xff38D4B1)),)),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget> [
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height:10, width: 100.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
