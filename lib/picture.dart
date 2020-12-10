import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'login.dart';
import 'loginForm.dart';
import 'profile.dart';

class Picture extends StatefulWidget {
  @override
  _PictureState createState() => _PictureState();
}

class _PictureState extends State<Picture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow,
        leading: Icon(
          Icons.person,
          color: Colors.black,
        ),
        title: Text(
          'Picture',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
          color: Colors.yellow,
          child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20.0,
                padding: EdgeInsets.only(top: 50),
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image(
                        width: 150.0,
                        image: AssetImage('images/1.png'),
                      ),
                      Text("Woahh!?!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.black))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image(
                        width: 150.0,
                        image: AssetImage('images/2.png'),
                      ),
                      Text("Ridin'",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.black))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image(
                        width: 150.0,
                        image: AssetImage('images/3.png'),
                      ),
                      Text("Let's Go!!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.black))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image(
                        width: 150.0,
                        image: AssetImage('images/4.png'),
                      ),
                      Text("Bored",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.black))
                    ],
                  ),
                  Column(
                    children: [
                      RaisedButton(
                        padding: EdgeInsets.all(10),
                        onPressed: (){
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile()),
                          );
                        },
                        color: Colors.black,
                        child: Text(
                          'Profile',
                          style: TextStyle(
                            color: Colors.yellow
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
        ),
    );
  }
}
