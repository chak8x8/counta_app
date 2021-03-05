import 'package:flutter/material.dart';

class MenuItems extends StatefulWidget {
  @override
  _MenuItemsState createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Setting Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped (int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Item"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.grey,),
                title: Text(''),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.grey,),
                title: Text(''),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.grey,),
                title: Text(''),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings, color: Colors.grey,),
                title: Text(''),
                backgroundColor: Colors.white),
          ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        iconSize: 40.0,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}
