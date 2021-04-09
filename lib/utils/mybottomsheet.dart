// import 'package:flutter/material.dart';
//
//
// class MyBottomSheet extends StatefulWidget {
//
//   final String MyText;
//
//   const MyBottomSheet({Key key, this.MyText}) : super(key: key);
//
//   @override
//   _MyBottomSheetState createState() => _MyBottomSheetState();
// }
//
// class _MyBottomSheetState extends State<MyBottomSheet> {
//   void displayBottomSheet(BuildContext context){
//     showModalBottomSheet(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         context: context,
//         builder: (ctx) {
//           return Container(
//             height: MediaQuery.of(context).size.height  * 0.4,
//             child: Center(
//               child: Text(widget.MyText),
//             ),
//           );
//         });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     body: showModalBottomSheet(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         context: context,
//         builder: (ctx) {
//           return Container(
//             height: MediaQuery.of(context).size.height  * 0.4,
//             child: Center(
//               child: Text(widget.MyText),
//             ),
//           );
//         });
//     );
//   }
// }
