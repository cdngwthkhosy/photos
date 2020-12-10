import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'login.dart';
import 'profile.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String email = 'user@mail.com';
  String password = '123456';

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  final formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              _formBuilder(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _formBuilder() {
    return Form(
      key: formKey,
      // autovalidate: true,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black),
              validator: (value) {
                return value.isEmpty ? "Email Tidak Boleh Kosong" : null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink, width: 10)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.5)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.5)),
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              controller: passwordController,
              obscureText: true,
              style: TextStyle(color: Colors.black),
              validator: (value) {
                return value.isEmpty ? "Password Tidak Boleh Kosong" : null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.5)),
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              if (formKey.currentState.validate() &&
                  emailController.text.toString() == email) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              }
            },
            color: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.07,
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 24, color: Colors.yellow),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: FlatButton(
              child: Text(
                'Back',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
