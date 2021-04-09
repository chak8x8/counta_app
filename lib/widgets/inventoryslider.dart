import 'package:flutter/material.dart';

class InventorySlider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20.0,),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                Container(
                  width: 160.0,
                  color: Colors.white,
                  child: Text('ABC'),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    color: Color(0xff38D4B1),),
                  child:Icon(Icons.arrow_right,color: Colors.grey,),
                ),
              ],
            ),
            SizedBox(width: 30.0,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                Container(
                  width: 160.0,
                  color: Colors.white,
                  child: Text('ABC'),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    color: Color(0xff38D4B1),),
                  child:Icon(Icons.arrow_right,color: Colors.grey,),
                ),
              ],
            ),
            SizedBox(width: 30.0,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                Container(
                  width: 160.0,
                  color: Colors.white,
                  child: Text('ABC'),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    color: Color(0xff38D4B1),),
                  child:Icon(Icons.arrow_right,color: Colors.grey,),
                ),
              ],
            ),
          ],
        ),
      );
  }
}
