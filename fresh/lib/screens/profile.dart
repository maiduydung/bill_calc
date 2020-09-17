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
                  Text(
                    '月間',
                    style: TextStyle(color: Colors.yellow[700]),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                alignment: Alignment.center,
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
              ),
              Divider(),
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
