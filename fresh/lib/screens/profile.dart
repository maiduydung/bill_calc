import 'package:flutter/material.dart';
import 'package:fresh/screens/navigate_bar.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(10.0),
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
          Avatar(),
          Text(
            'イ二アド',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.0,
          ),
          //2 description lines below the avatar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                '11位',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              Text(
                '14位',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
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
            margin: EdgeInsets.fromLTRB(60, 20, 60, 10),
            alignment: Alignment.center,
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
          ),
          Divider(
            height: 5,
          ),
          //random description below the divider
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  child: Text(
                    'おすすめ家電',
                    style: TextStyle(fontSize: 17.0, color: Colors.yellow[700]),
                  ),
                  margin: const EdgeInsets.fromLTRB(20, 5, 0, 5)),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(50, 5, 0, 5),
                child: Text(
                  'TV abc',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
          //pic at the end
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 223,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                        "https://azcd.harveynorman.com.au/media/catalog/product/q/a/qa55q80tawxxy_2.jpg"),
                  ),
                ),
              )
            ],
          ),
          NavigateBar(),
        ],
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
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
                    radius: 70.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 55.0,
                      backgroundImage: AssetImage('assets/face_1.jpg'),
                    ),
                  ),
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
