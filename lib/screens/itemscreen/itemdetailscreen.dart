import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemDetailScreen extends StatefulWidget {
  @override
  _ItemDetailScreenState createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  bool _lights = false;
  bool sharing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Item Detail',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: TextButton(
              child: Text('Edit'),
              onPressed: () {},
            ),
          ),
        ],
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
                image: AssetImage('images/clothexample.png'),
              )),
            ),
            SizedBox(
              height: 10.0,
            ),
            MergeSemantics(
              child: ListTile(
                title: Row(
                  children: [
                    Text('Item '),
                    Text(
                      sharing == true ? 'IS' : 'IS NOT',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(' currently available for sharing'),
                  ],
                ),
                trailing: CupertinoSwitch(
                  value: _lights,
                  onChanged: (bool value) {
                    setState(() {
                      _lights = value;
                      sharing = value;
                    });
                  },
                ),
                onTap: () {
                  setState(() {
                    _lights = !_lights;
                    sharing = !sharing;
                  });
                },
              ),
            ),

            Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),


            Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: Text('TAGS'),
            ),
            Container(
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:15.0),
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
                  SizedBox(width: 10.0,),
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
              padding: const EdgeInsets.all(8.0),
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
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "QUALITY",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "1",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            Text('Note'),
            Text('data'),
          ],
        ),
      ),
    );
  }
}
