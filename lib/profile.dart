import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'loginForm.dart';
import 'login.dart';
import 'picture.dart';
import 'about.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow,
        
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.yellow,
              child: Image.asset('images/pic3.png'),
              height: 300,
              width: double.infinity,
            ),
            Container(
              color: Colors.yellow,
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  'Hello, Khosy',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
                ),
              ),
            ),
            Container(
              color: Colors.yellow,
              padding: EdgeInsets.all(50),
              child: Center(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Picture()),
                    );
                  },
                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  child: Text(
                    'Your Picture',
                    style: TextStyle(fontSize: 15, color: Colors.yellow),
                  ),
                ),
              ),
            ),
            Container(padding: EdgeInsets.all(150), color: Colors.yellow)
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Photos',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black
                ),
                ),
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
            ),
            ListTile(
              title: Text(
                'ABOUT',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black
                ),
                ),
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
                );
              },
            ),
            ListTile(
              title: Text(
                'LOG OUT',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black
                ),
                ),
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
