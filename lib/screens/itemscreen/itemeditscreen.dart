import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemEditScreen extends StatefulWidget {
  @override
  _ItemEditScreenState createState() => _ItemEditScreenState();
}

class _ItemEditScreenState extends State<ItemEditScreen> {
  bool _lights = false;
  bool sharing = false;

  int segmentedControlGroup = 0;
  int segmentedControlGender = 0;

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
              child: Text('Save'),
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
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonTheme(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        primary: Color(0xff38D4B1),
                        //minimumSize: Size(50.0, 50.0),
                      ),
                      child: Text(
                        'RETAKE',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    ),
                  ),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: 400.0,
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
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('TAGS'),
            ),
            Container(
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      color: Color(0xff38D4B1),
                      size: 30.0,
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(), primary: Colors.white),
                  ),
                  // MaterialButton(
                  //   onPressed: () {},
                  //   color: Colors.white,
                  //   textColor: Colors.black,
                  //   child: Icon(
                  //     Icons.add,
                  //     size: 18,
                  //   ),
                  //   padding: EdgeInsets.all(2),
                  //   shape: CircleBorder(),
                  // ),
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('GROUP'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: CupertinoSlidingSegmentedControl(
                    groupValue: segmentedControlGroup,
                    children: const <int, Widget>{
                      0: Text('Adult'),
                      1: Text('Kid'),
                      2: Text('Baby'),
                    },
                    onValueChanged: (i) {
                      setState(() {
                        segmentedControlGroup = i;
                      });
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('GENDER'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: CupertinoSlidingSegmentedControl(
                    groupValue: segmentedControlGender,
                    children: const <int, Widget>{
                      0: Text('Female'),
                      1: Text('Male'),
                      2: Text('Unisex'),
                    },
                    onValueChanged: (i) {
                      setState(() {
                        segmentedControlGender = i;
                      });
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('SIZE'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('COLOUR'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('QUANTITY'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('NOTE'),
            ),
            Center(
              child: ButtonTheme(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    primary: Colors.redAccent,
                    minimumSize: Size(300.0, 60.0),
                  ),
                  child: Text(
                    'DELETE ITEM',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
