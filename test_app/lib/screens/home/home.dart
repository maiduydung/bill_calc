import 'package:flutter/material.dart';

import '../../services/auth.dart';

class Home extends StatelessWidget {
  final AuthSevice _auth = AuthSevice();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text('Bill calculator'),
        backgroundColor: Colors.blue[300],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text('logout'))
        ],
      ),
    );
  }
}
