import 'package:flutter/material.dart';


class InventoryGridScreen extends StatefulWidget {
  @override
  _InventoryGridScreenState createState() => _InventoryGridScreenState();
}

class _InventoryGridScreenState extends State<InventoryGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.extent(
        maxCrossAxisExtent: 200.0,
        primary: true,
        padding: EdgeInsets.all(10.0),
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: <Widget> [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)), color: Colors.grey,),
          ),
        ],
      ),
    );
  }
}
