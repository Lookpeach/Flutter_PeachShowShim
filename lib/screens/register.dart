import 'package:flutter/material.dart';
import 'package:peachshowshim/screens/my_style.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
//Explicit
  String name, email, password; //paramiter for send to cloud
  final formKey = GlobalKey<FormState>(); //รับค่าจาก text from fielfield

//Method
  Widget registerButton() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      tooltip:
          'Upload Value to my Database', //icon at material.io + tooltip and pop up text on mouse over
      onPressed: () {
        formKey.currentState.save();
        print('name = $name,email =$email,password = $password'); //$คือเอาค่ามาแสดง
      },
    );
  }

  Widget nameText() {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.face,
          size: 36.0,
        ),
        labelText: 'Display Name :',
        helperText: 'Type Your Name',
      ),
      onSaved: (String value) {
        name = value.trim();
      },
    );
  }

  Widget emailText() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        icon: Icon(
          Icons.email,
          size: 36.0,
        ),
        labelText: 'Email :',
        helperText: 'Type Your Email',
      ),
      onSaved: (String value) {
        email = value.trim();
      },
    );
  }

  Widget passwordText() {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.lock,
          size: 36.0,
        ),
        labelText: 'Password :',
        helperText: 'Type Your Password',
      ),
      onSaved: (String value) {
        password = value.trim();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyStyle().textColor,
        title: Text('Register'),
        actions: <Widget>[registerButton()],
      ),
      body: Form(key: formKey,
              child: ListView(
          padding: EdgeInsets.all(40.0), //ห่างด้านละ  40
          children: <Widget>[
            nameText(),
            emailText(),
            passwordText(),
          ],
        ),
      ), //ใส่ของเกินจอได้
    );
  }
}
