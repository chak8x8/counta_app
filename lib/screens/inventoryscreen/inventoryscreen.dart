import 'package:flutter/material.dart';

class InventoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventory'),
      ),
      body: BodyLayout(),
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
      children: ListTile.divideTiles(
        context: context,
        tiles: [
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('images/clothingicon.png', fit: BoxFit.contain,),
              maxRadius: 50,
              backgroundColor: Colors.black12,
            ),
            title: Text('Clothing'),
            subtitle: Text('21 items'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/clothingicon.png'),
              maxRadius: 50,
              backgroundColor: Colors.white,
            ),
            title: Text('Clothing'),
            subtitle: Text('21 items'),
          ),
        ],
      ).toList(),
  );
}


