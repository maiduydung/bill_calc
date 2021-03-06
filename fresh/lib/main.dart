//import 'dart:ffi';

import 'package:flutter/material.dart';

import 'carousel.dart';
import 'chat_carousel.dart';
import 'screens/navigate_bar.dart';

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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          elevation: 0,
          title: Text(
            "",
            style: TextStyle(color: Colors.black38),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[200],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 60.0,
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              'Articles',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ),
          CarouselWidget(),
          Divider(
            height: 30,
          ),
          ChatCarousel(),
          SizedBox(
            height: 10.0,
          ),
          NavigateBar(),
        ],
      ),
      //bottomNavigationBar: NavigateBar(),
      backgroundColor: Colors.white,
    );
  }
}
