import 'package:flutter/material.dart';
import 'package:peachshowshim/screens/my_style.dart';
import 'package:peachshowshim/screens/register.dart';

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
        fontSize: 30.0,
        color: MyStyle().textColor,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        fontFamily: 'PatrickHand',
      ),
    ); //name thai
  }

  Widget signInButton() {
    return RaisedButton(
      color: MyStyle().textColor,
      child: Text(
        'Sign In',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );
  }

  Widget signUpButton() {
    return OutlineButton(
      child: Text('Sign Up'),
      onPressed: () {
        print('you Click Sign Up');
        MaterialPageRoute materialPageRoute = MaterialPageRoute(builder: (BuildContext context) => Register()); //สืบทอด class // Route การเปบี่ยนหน้า
        Navigator.of(context).push(materialPageRoute); // auto arrow back

      },
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
