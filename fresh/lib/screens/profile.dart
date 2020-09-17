import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0),
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
      body: Stack(
        children: <Widget>[
          new Container(
            height: 80.0,
            color: Colors.amber,
          ),
          Column(
            children: <Widget>[
              //Avatar row, careful not to touch
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 80.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 65.0,
                      backgroundImage: AssetImage('assets/face_1.jpg'),
                    ),
                  ),
                ],
              ),
              Text(
                'イ二アド',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              //2 description lines below the avatar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    '11位',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                  VerticalDivider(),
                  Text(
                    '14位',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    '週間',
                    style: TextStyle(color: Colors.yellow[700]),
                  ),
                  VerticalDivider(),
                  Text(
                    '月間',
                    style: TextStyle(color: Colors.yellow[700]),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void backToMainPage(context) {
  Navigator.pop(context);
}
