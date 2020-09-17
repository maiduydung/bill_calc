import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.yellow[700],
          actions: <Widget>[
            new IconButton(
                icon: new Icon(
                  Icons.close,
                  color: Colors.grey,
                  size: 30.0,
                ),
                onPressed: () => backToMainPage(context))
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('assets/face_1.jpg'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

void backToMainPage(context) {
  Navigator.pop(context);
}
