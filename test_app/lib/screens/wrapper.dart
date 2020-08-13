import 'package:flutter/material.dart';
import 'package:test_app/screens/authenticate/authenticate.dart';
import 'package:test_app/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //returning either home or auth
    return Authenticate();
  }
}
