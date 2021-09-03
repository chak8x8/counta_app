import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselScreen extends StatefulWidget {
  @override
  _CarouselScreenState createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  CarouselSlider carouselSlider;

  final List<String> imgList = [
    "images/browse.png",
    "images/friends.png",
    "images/inventory.png"
  ];

  final List<String> textList = [
    "Organise and track your belongings",
    "Share your items with friends and family",
    "Help your community grow",
  ];

  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/backgroundimage.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              carouselSlider = CarouselSlider(
                height: 60.0,
                initialPage: 0,
                enlargeCenterPage: false,
                autoPlay: true,
                reverse: false,
                enableInfiniteScroll: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 2000),
                pauseAutoPlayOnTouch: Duration(seconds: 10),
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  setState(() {
                    _current = index;
                  }
                  );
                  },
                items: textList.map((textVal) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        child: Expanded(
                          child: Text(
                            textVal,
                            style: TextStyle(color: Colors.black, fontSize: 16.0),
                          ),
                        ),
                      );
                      },
                  );
                }
                ).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              carouselSlider = CarouselSlider(
                height: 400.0,
                initialPage: 0,
                enlargeCenterPage: false,
                autoPlay: true,
                reverse: false,
                enableInfiniteScroll: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 2000),
                pauseAutoPlayOnTouch: Duration(seconds: 10),
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  setState(() {
                    _current = index;
              });
                  },
                items: imgList.map((imgUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        // width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(imgUrl),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      );
                      },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              _current == 2
                  ? ButtonTheme(
                minWidth: 290.0,
                height: 60.0,
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Text(
                      'Get Started',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Color(0xff38D4B1),
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map <Widget>(imgList, (index, url) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index
                            ? Color(0xff38D4B1)
                            : Colors.white,
                      ),
                    );
                  }),
                ),
            ],
          ),
        ));
  }
}
