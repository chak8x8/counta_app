import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BorrowSearchScreen extends StatefulWidget {
  @override
  _BorrowSearchScreenState createState() => _BorrowSearchScreenState();
}

class _BorrowSearchScreenState extends State<BorrowSearchScreen> {
  BouncingScrollPhysics bouncingScrollPhysics = new BouncingScrollPhysics();

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
          // Expanded(
          //   child: Column(
          //     children: <Widget>[
          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   height: 30.0,
          //   color: Colors.black26,
          //   child: Padding(
          //     padding: const EdgeInsets.only(top:5.0, left: 30.0),
          //     child: Text('Tags', style: TextStyle(color: Colors.black),),
          //   ),
          // ),
          // ListView(
          //   shrinkWrap: true,
          //   children: ListTile.divideTiles(
          //     context: context,
          //     tiles: [
          //       ListTile(
          //         title: Text('Air matress'),
          //       ),
          //       ListTile(
          //         title: Text('Air matress pump'),
          //       ),
          //       ListTile(
          //         title: Text('Apple'),
          //       ),
          //     ],
          //   ).toList(),
          // ),
          //
          //     ],
          //   ),
          // ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 30.0,
            color: Colors.black26,
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 30.0),
              child: Text(
                'Tags',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: _tagListView(),
            ),
          ),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
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
                  Center(
                    child: Column(
                      children: [
                        Container(
                          width: 150.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/emptystate.png'),
                          )),
                        ),
                        Text(
                          'There are no items to borrow.',
                          style: TextStyle(color: Colors.black26),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _tagListView() {
  return Container(
    child: ListView.builder(
      itemCount: tagArray.length,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(tagArray[index]),
        );
      },
    ),
  );
}

final tagArray = [
  'Air matress',
  'Air matress pump',
  'Apple',
  'Bluetooth keyboard',
  'Bluetooth mouse',
  'Bluetooth tracpad',
  'Camping',
  'Cookbook',
  'Cooking',
  'Design',
];
