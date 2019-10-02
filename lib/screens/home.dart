import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  //commu and add data to new scene
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
// Explicit

//Method

  Widget showLogo() {
    return Container(
      width: 220,
      height: 220,
      child: Image.asset('images/logo.png'),
    );
  }

  Widget showAppName() {
    return Text(
      'Peach Show Shim',
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.grey[800],
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        fontFamily: 'PatrickHand',
      ),
    ); //name thai
  }

  Widget signInButton() {
    return RaisedButton(
      color: Colors.lime,
      child: Text(
        'Sign In',
        style: TextStyle(color: Colors.lime[900]),
      ),
      onPressed: () {},
    );
  }

  Widget signUpButton() {
    return OutlineButton(
      child: Text('Sign Up'),
      onPressed: () {},
    );
  }

  Widget showButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        signInButton(),
        SizedBox(
          width: 40.0,
        ),
        signUpButton(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/wallpaper.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(
              color: Color.fromRGBO(255, 255, 255, 0.6),
              padding: EdgeInsets.all(80.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  showLogo(),
                  SizedBox(
                    height: 3.0,
                  ),
                  showAppName(),
                  SizedBox(
                    height: 20.0,
                  ),
                  showButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
