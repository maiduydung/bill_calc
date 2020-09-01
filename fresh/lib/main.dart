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
      body: Center(
          child: IconButton(
              icon: Icon(Icons.alternate_email),
              onPressed: () {
                print('aaaaa');
              })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("clicked");
        },
        child: Text("hit"),
        backgroundColor: Colors.black12,
      ),
    );
  }
}
