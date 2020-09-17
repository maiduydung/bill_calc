import 'package:flutter/material.dart';
import 'profile.dart';

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
            onPressed: () => navigateTo(context),
            iconSize: 30.0,
          ),
        ],
      ),
    );
  }
}

Future navigateTo(context) async {
  print(context);
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Profile(),
      ));
}
