import 'package:flutter/material.dart';
import 'package:recipeapp/screens/profile_screen.dart';

import 'favorites_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Home"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[],
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
              color: Colors.blue[100],
            ),
            child: Icon(
              Icons.home,
              color: Colors.blue[800],
              size: 40,
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
                color: Colors.blue[300],
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
