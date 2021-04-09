import 'package:flutter/material.dart';


class MyAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(
          child: Text('Donate'),
          onPressed: (){
            showAlertDialog(context);

          }
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget yesButton = ElevatedButton(
    child: Text('Yes'),
    onPressed: (){
      Navigator.of(context).pop();

    },
    style: ElevatedButton.styleFrom(shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),),
  );

  Widget cancelButton = ElevatedButton(
    child: Text('Cancel'),
    onPressed: (){
      Navigator.of(context).pop();

    },
    style: ElevatedButton.styleFrom(shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),),
  );


  AlertDialog alert = AlertDialog(
    title: Text('Donate Items'),
    actions: [
      yesButton,
      cancelButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );

}