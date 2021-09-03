import 'package:flutter/material.dart';

class BorrowSearchMatchingScreen extends StatefulWidget {
  @override
  _BorrowSearchMatchingScreenState createState() =>
      _BorrowSearchMatchingScreenState();
}

class _BorrowSearchMatchingScreenState
    extends State<BorrowSearchMatchingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                height: 35.0,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search',
                    filled: true,
                    fillColor: Colors.black12,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: TextButton(
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Color(0xff38D4B1)),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Chip(
                backgroundColor: Color(0xff38D4B1),
                label: Container(
                  height: 20.0,
                  width: 90.0,
                  child: Row(
                    children: [
                      Text(
                        'Black',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.clear,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Text(
                  'No Matching Items',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  child: Text(
                    'Clothing (1)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: TextButton(
                  child: Text(
                    'View all',
                    style: TextStyle(color: Color(0xff38D4B1)),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 150.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/borrowcloth.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(20.0),
                  //   child: Image(
                  //     image: AssetImage('images/clothexample.png'),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
