import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  //commu and add data to new scene
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
// Explicit

//Method
  Widget showAppName() {
    return Text('Peach Show Shim'); //name thai
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              showAppName(),
              showAppName(),
            ],
          ),
        ),
      ),
    );
  }
}
