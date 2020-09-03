import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  Container myArticles(String imgVal, String heading, String subHeading) {
    return Container(
      //decoration: new BoxDecoration(color: Colors.transparent),
      width: 170.0,
      child: Card(
        elevation: 0.0,
        color: Colors.white,
        child: Wrap(
          children: <Widget>[
            Image.network(imgVal),
            ListTile(
              title: Text(heading),
              subtitle: Text(subHeading),
              contentPadding: EdgeInsets.all(10),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          myArticles(
              'https://images.unsplash.com/photo-1584143987552-0ab1f595af6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
              "Kitchen appliances",
              'Microwave oven, fridge, stove, etc'),
          myArticles(
              'https://images.unsplash.com/photo-1590756254933-2873d72a83b6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
              "Air conditioner",
              'Random stuffs go here'),
          myArticles(
              'https://images.unsplash.com/photo-1593078165899-c7d2ac0d6aea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
              "TV",
              'Some more stuffs in here'),
        ],
      ),
    );
  }
}
