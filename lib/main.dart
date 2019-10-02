import 'package:flutter/material.dart';
import 'package:peachshowshim/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //creat in scene
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Home(),
    );
  }
}
