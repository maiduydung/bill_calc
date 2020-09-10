import 'package:flutter/material.dart';

class Article extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.grey[200],
            actions: <Widget>[
              new IconButton(
                  icon: new Icon(
                    Icons.close,
                    color: Colors.grey[600],
                    size: 30.0,
                  ),
                  onPressed: () => backToMainPage(context))
            ],
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Card(
            elevation: 0,
            child: ListTile(
              subtitle: Container(
                color: Colors.white,
                padding: EdgeInsets.all(4),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed urna ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dapibus arcu mauris, ac luctus purus rhoncus nec. Phasellus ultrices mauris a lectus dapibus ullamcorper. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis eget euismod velit, eu suscipit turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec posuere lorem, quis mollis ante. Proin urna quam, fermentum ac quam sit amet, dictum mattis ipsum.",
                ),
              ),
            ),
          ),
        )));
  }
}

void backToMainPage(context) {
  Navigator.pop(context);
}
