import 'package:flutter/material.dart';
import 'inventoryscreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InventoryMainScreen extends StatefulWidget {

  @override
  _InventoryMainScreenState createState() => _InventoryMainScreenState();
}

class _InventoryMainScreenState extends State <InventoryMainScreen> {
  int _selectedIndex = 0;

  String _title;

  static List<Widget> _widgetOptions = <Widget>[
    InventoryScreen(),
    Text('Borrow',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Add Items',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Notification',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Friends',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _title = 'Inventory';
  }

  void _onItemTapped (int index){
    setState(() {
      _selectedIndex = index;
      switch (index){
        case 0: {_title = 'Inventory';}
        break;
        case 1: {_title = 'Borrow';}
        break;
        case 2: {_title = 'Add Items';}
        break;
        case 3: {_title = 'Notification';}
        break;
        case 4: {_title = 'Friends';}
        break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title, style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
          child:
          Center(child: _widgetOptions.elementAt(_selectedIndex))
          ),

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.boxes),
            backgroundColor: Colors.white,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/borrowicon.png'),
            backgroundColor: Colors.white,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/additemicon.png'),
            backgroundColor: Colors.white,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/notificationicon.png'),
            backgroundColor: Colors.white,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/friendsicon.png'),
            backgroundColor: Colors.white,
            label: '',
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        iconSize: 20.0,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}




