import 'package:flutter/material.dart';
import 'package:recipeapp/screens/profile_screen.dart';

import 'balsamic_chicken_screen.dart';
import 'chicken_cutlet_screen.dart';
import 'chicken_strog_screen.dart';
import 'favorites_screen.dart';
import 'home_screen.dart';
import 'honey_chicken_screen.dart';

class RecentsScreen extends StatefulWidget {
  @override
  _RecentsScreenState createState() => _RecentsScreenState();
}

class _RecentsScreenState extends State<RecentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recents"),
        automaticallyImplyLeading: true,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Column(
            children: [
              SizedBox(height: 10,),
              Container(
                width: 300.0,
                height: MediaQuery.of(context).size.height - 213,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (_) => ChickenStrogScreen()));
                      },
                      child: Container(
                        child: Text(' Chicken Stroganoff'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (_) => ChickenStrogScreen()));
                      },
                      child: Container(
                        height: 200.0,
                        width: 300.0,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Image.asset(
                          'assets/chicken.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (_) => ChickenCutlet()));
                      },
                      child: Container(
                        child: Text(' Chicken Parmesan Cutlets'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (_) => ChickenCutlet()));
                      },
                      child: Container(
                        height: 200.0,
                        width: 300.0,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Image.asset(
                          'assets/cutlet.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (_) => BalsamicChicken()));
                      },
                      child: Container(
                        child: Text(' Balsamic Glazed Chicken'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (_) => BalsamicChicken()));
                      },
                      child: Container(
                        height: 200.0,
                        width: 300.0,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Image.asset(
                          'assets/glazed.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (_) => HoneyChicken()));
                      },
                      child: Container(
                        child: Text(' Honey Garlic Chicken'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (_) => HoneyChicken()));
                      },
                      child: Container(
                        height: 200.0,
                        width: 300.0,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Image.asset(
                          'assets/honey.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
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
