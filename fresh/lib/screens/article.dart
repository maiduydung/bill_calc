import 'package:flutter/material.dart';

class Article extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Baileys',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'The best drink ever made.',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[Text('2020/09/11')],
                ),
                Divider(
                  height: 10.0,
                  thickness: 1.0,
                ),
                SizedBox(
                  height: 0.0,
                ),
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://www.haskells.com/media/catalog/product/cache/1/image/816x1200/040ec09b1e35df139433887a97daa66f/2/0/202033_1_1_1.jpg')),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed urna ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dapibus arcu mauris, ac luctus purus rhoncus nec. Phasellus ultrices mauris a lectus dapibus ullamcorper. \n\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis eget euismod velit, eu suscipit turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec posuere lorem, quis mollis ante. Proin urna quam, fermentum ac quam sit amet, dictum mattis ipsum.\n\n Ut quis blandit ipsum, a imperdiet arcu. Quisque sagittis purus at mauris commodo, quis ultrices massa porta. Curabitur turpis nulla, dignissim at eros vel, faucibus porta tortor. Duis porta arcu lacus, maximus efficitur lacus lacinia eget. \n Suspendisse nec auctor neque, vitae sodales orci. Curabitur quis gravida eros. Nunc et hendrerit enim, nec interdum urna. Aenean elementum ligula mauris, id tempor lorem lacinia vel. Fusce feugiat faucibus est sed convallis. Proin ornare lorem libero, accumsan eleifend arcu maximus in. Sed sed tristique massa. Aliquam laoreet odio quis nibh fringilla, a bibendum nisi consequat.')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void backToMainPage(context) {
  Navigator.pop(context);
}
