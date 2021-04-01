import 'package:flutter/material.dart';
import 'package:counta_app/widgets/widgets.dart';

class InventoryScreen extends StatefulWidget {

  @override
  _InventoryScreenState createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  int _selectedIndex = 0;

  String _title;

  static List<Widget> _widgetOptions = <Widget>[
    Column(
      children: [
        InventorySlider(),
        BodyLayout(),
      ],
    ),
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
        title: Text('Inventory'),
        backgroundColor: Colors.white,
      ),
      body:
          SingleChildScrollView(
              child:
              Center(child: _widgetOptions.elementAt(_selectedIndex))
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
        selectedItemColor: Colors.black,
        iconSize: 40.0,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override



  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context){
  return ListView(
    shrinkWrap: true,
      children: ListTile.divideTiles(
        context: context,
        tiles: [
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('images/clothingicon.png', fit: BoxFit.contain,),
              maxRadius: 50,
              backgroundColor: Color(0xffF6F6FD),
            ),
            title: Text('Clothing'),
            subtitle: Text('21 items'),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('images/bookicon.png', fit: BoxFit.contain,),
              maxRadius: 50,
              backgroundColor: Color(0xffF6F6FD),
            ),
            title: Text('Books'),
            subtitle: Text('6 items'),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('images/gamesicon.png', fit: BoxFit.contain,),
              maxRadius: 50,
              backgroundColor: Color(0xffF6F6FD),
            ),
            title: Text('Games'),
            subtitle: Text('21 items'),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('images/officeicon.png', fit: BoxFit.contain,),
              maxRadius: 50,
              backgroundColor: Color(0xffF6F6FD),
            ),
            title: Text('Office'),
            subtitle: Text('21 items'),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('images/bedroomicon.png', fit: BoxFit.contain,),
              maxRadius: 50,
              backgroundColor: Color(0xffF6F6FD),
            ),
            title: Text('Bedroom'),
            subtitle: Text('21 items'),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('images/generalicon.png', fit: BoxFit.contain,),
              maxRadius: 50,
              backgroundColor: Color(0xffF6F6FD),
            ),
            title: Text('General'),
            subtitle: Text('21 items'),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('images/clothingicon.png', fit: BoxFit.contain,),
              maxRadius: 50,
              backgroundColor: Color(0xffF6F6FD),
            ),
            title: Text('Clothing'),
            subtitle: Text('21 items'),
          ),
        ],
      ).toList(),
  );
}


