import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/screens/authenticate/authenticate.dart';
import 'package:test_app/screens/home/home.dart';
import 'package:test_app/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    //returning either home or auth
    return Authenticate();
  }
}
