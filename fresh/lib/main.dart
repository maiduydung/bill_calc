//import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
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
      body: Row(
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
