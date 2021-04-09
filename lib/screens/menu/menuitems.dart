import 'package:flutter/material.dart';

class MenuItems extends StatefulWidget {

  final String title;

  MenuItems ({Key key, this.title}): super (key: key);

  @override
  _MenuItemsState createState() => _MenuItemsState();
}

class _MenuItemsState extends State <MenuItems> {
  int _selectedIndex = 1;
  String _title;

  static const List <Widget> _widgetOptions = <Widget> [
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
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset('images/inventoryicon.png'),
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
        iconSize: 10.0,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}
