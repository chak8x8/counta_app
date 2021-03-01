import 'package:flutter/material.dart';
import 'package:transformer_page_view/transformer_page_view.dart';


class CarouselScreen extends StatefulWidget {
  @override
  _CarouselScreenState createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {

  final List<String> images = [
    "Images/browse.png",
    "Images/friends.png",
    "Images/inventory.png"
  ];

  final List<String> text0 = [
    "Organise and track your belongings",
    "Share your items with friends and family",
    "Help your community grow",
  ];

  final IndexController controller = IndexController();

  int _slideIndex = 0;

  @override
  Widget build(BuildContext context) {

    TransformerPageView transformerPageView = TransformerPageView(
      pageSnapping: true,
      onPageChanged: (index){
        setState(() {
         this._slideIndex = index;
        });
      },
      loop: false,
      controller: controller,
      transformer: PageTransformerBuilder(
          builder: (Widget child, TransformInfo info) {
            return Material(
              color: Colors.white,
              elevation: 8.0,
              textStyle: TextStyle(color: Colors.white),
              borderRadius: BorderRadius.circular(12.0),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('Images/backgroundimage.png'),
                  ),
                ),
              ),
            );
          }
      ),
      itemCount: 4,
    );

    return Scaffold(
      body: transformerPageView,
      backgroundColor: Colors.white,

    );
  }
}
