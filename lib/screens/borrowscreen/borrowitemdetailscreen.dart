import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BorrowItemDetailScreen extends StatefulWidget {
  @override
  _BorrowItemDetailScreenState createState() => _BorrowItemDetailScreenState();
}

class _BorrowItemDetailScreenState extends State<BorrowItemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Item',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/borrowcloth.png'),
              )),
            ),
            SizedBox(
              height: 10.0,
            ),
            MergeSemantics(
              child: ListTile(
                title: Row(
                  children: [
                    Text('Your friend '),
                    Text(
                      'John Smith\'s',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(' item is available for sharing'),
                  ],
                ),
              ),
            ),
            Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('TAGS (2)'),
            ),
            Container(
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Chip(
                      //elevation: 20,
                      //padding: EdgeInsets.all(8),
                      backgroundColor: Color(0xff38D4B1),
                      //shadowColor: Colors.black,
                      label: Container(
                        height: 40.0,
                        width: 130.0,
                        child: Center(
                          child: Text(
                            'Casual',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Chip(
                    //elevation: 20,
                    //padding: EdgeInsets.all(8),
                    backgroundColor: Color(0xff38D4B1),
                    //shadowColor: Colors.black,
                    label: Container(
                      height: 40.0,
                      width: 130.0,
                      child: Center(
                        child: Text(
                          'Blue',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0),
              child: Table(
                columnWidths: {
                  0: FixedColumnWidth(100),
                  1: FixedColumnWidth(100),
                },
                children: [
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "CATEGORY",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Clothing",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "GROUP",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Adult",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ]),
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "GENDER",
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Male",
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                    ],
                  ),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "SIZE",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Large",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                      child: Text(
                        "QUALITY",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                      child: Text(
                        "1",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Note', style: TextStyle(fontSize: 18.0),),
            ),

            Center(
              child: ButtonTheme(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(
                        30.0,
                      ),
                    ),
                    primary: Color(0xff38D4B1),
                    minimumSize: Size(300.0, 60.0),
                  ),
                  child: Text(
                    'REQUEST TO BORROW',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Center(
              child: ButtonTheme(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(
                        30.0,
                      ),
                    ),
                    primary: Color(0xff38D4B1),
                    minimumSize: Size(300.0, 60.0),
                  ),
                  child: Text(
                    'CONTACT OWNER',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
