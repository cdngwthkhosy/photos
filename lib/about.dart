import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'loginForm.dart';
import 'login.dart';
import 'profile.dart';
import 'picture.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow,
        
        title: Text(
          'About',
          style: TextStyle(color: Colors.black),
        ),
      ),
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
            child: Center(
              child: Text(
              'Copyright by Mochamad Khosy N F - 18111094',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400
                ),
              ),
            )
          ),
          Container(
            padding: EdgeInsets.all(90),
            color: Colors.yellow
          )
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
                'PROFILE',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black
                ),
                ),
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
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