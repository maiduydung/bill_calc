//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "insert_name",
          style: TextStyle(color: Colors.black38),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: CarouselPage()),
          Expanded(child: NavigateBar()),
        ],
      ),
    );
  }
}

class NavigateBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0.2, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.values[5],
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: null,
            iconSize: 30.0,
          ),
          IconButton(
            icon: Icon(Icons.insert_chart),
            onPressed: null,
            iconSize: 30.0,
          ),
          IconButton(
            icon: Icon(Icons.flag),
            onPressed: null,
            iconSize: 30.0,
          ),
          IconButton(
            icon: Icon(Icons.people),
            onPressed: null,
            iconSize: 30.0,
          ),
          IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: null,
            iconSize: 30.0,
          ),
        ],
      ),
    );
  }
}

class CarouselPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: 200,
          width: 600,
          child: Carousel(
            boxFit: BoxFit.contain,
            dotSize: 4.0,
            dotSpacing: 15.0,
            dotColor: Colors.lightGreenAccent,
            indicatorBgPadding: 5.0,
            dotBgColor: Colors.white.withOpacity(0.5),
            borderRadius: true,
            images: [
              NetworkImage(
                  'https://images.newscientist.com/wp-content/uploads/2019/07/02111520/gettyimages-157639696.jpg'),
              NetworkImage(
                  'https://images-na.ssl-images-amazon.com/images/S/sgp-catalog-images/region_US/g9a9m-MHM425BWQ9F-Full-Image_GalleryBackground-en-US-1521579412582._SX1080_.jpg'),
            ],
          )),
    );
  }
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
