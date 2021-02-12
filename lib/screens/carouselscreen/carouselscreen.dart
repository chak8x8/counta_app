import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class CarouselScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GFG Slider"),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            items: [

              //1st Image of Slider
              Column(
                children: [
                  Text('Organise and track your belongings'),
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage('images/inventory.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/friends.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/browse.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),


            ],

            //Slider Container properties
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              enlargeCenterPage: false,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,

            ),
          ),
        ],
      ),

    );
  }
}
