import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/screens/authenticate/authenticate.dart';
import 'package:test_app/screens/home/home.dart';
import 'package:test_app/models/user.dart';

import 'authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    //returning either home or auth
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
