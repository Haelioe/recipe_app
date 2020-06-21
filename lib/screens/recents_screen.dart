import 'package:flutter/material.dart';
import 'package:recipeapp/screens/profile_screen.dart';

import 'favorites_screen.dart';
import 'home_screen.dart';

class RecentsScreen extends StatefulWidget {
  @override
  _RecentsScreenState createState() => _RecentsScreenState();
}

class _RecentsScreenState extends State<RecentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (_) => ProfileScreen()));
              },
              icon: Icon(Icons.arrow_back),
              color: Colors.blueGrey,
            ),
          )
        ],
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, new MaterialPageRoute(builder: (_) => HomeScreen()));
            },
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 3,
              decoration: BoxDecoration(
                color: Colors.blue[100],
              ),
              child: Icon(
                Icons.home,
                color: Colors.blue[300],
                size: 40,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (_) => FavoritesScreen()));
            },
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 3,
              decoration: BoxDecoration(
                color: Colors.blue[100],
              ),
              child: Icon(
                Icons.star,
                color: Colors.blue[300],
                size: 40,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (_) => ProfileScreen()));
            },
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 3,
              decoration: BoxDecoration(
                color: Colors.blue[100],
              ),
              child: Icon(
                Icons.person,
                color: Colors.blue[800],
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
