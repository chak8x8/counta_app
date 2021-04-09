import 'package:counta_app/utils/mybottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:counta_app/widgets/widgets.dart';
import 'package:counta_app/utils//mybottomsheet.dart';
import 'package:counta_app/screens/books/booksmainscreen.dart';

class InventoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InventorySlider(),
        BodyLayout(),
      ],
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
          onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) => BooksMainScreen()));
          }
          ,
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