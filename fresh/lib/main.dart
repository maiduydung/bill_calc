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
        title: Text("What's up"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(child: Image.asset('assets/stars.jpg')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("hit"),
        backgroundColor: Colors.black12,
      ),
    );
  }
}
