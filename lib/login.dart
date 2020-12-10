import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'loginForm.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(
              'images/pic2.png',
              fit: BoxFit.cover,
            ),
            color: Colors.yellow
          ),
          Container(
            padding: EdgeInsets.all(40),
            color: Colors.yellow,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginForm()),
                    );
                  },
                  color: Colors.black,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.yellow,
                    ),
                  ),
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginForm()),
                    );
                  },
                  color: Colors.black,
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.yellow,
                    ),
                  ),
                )),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(70),
            color: Colors.yellow
          )
        ],
      ),
    ));
  }
}
