import 'package:flutter/material.dart';
import 'package:recipeapp/screens/profile_screen.dart';

import 'balsamic_chicken_screen.dart';
import 'chicken_cutlet_screen.dart';
import 'chicken_strog_screen.dart';
import 'favorites_screen.dart';
import 'home_screen.dart';
import 'honey_chicken_screen.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        automaticallyImplyLeading: true,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Column(
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
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
                                  builder: (_) => HoneyChicken()));
                        },
                        child: Container(
                          child: Text('Honey Garlic Chicken', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        child: Text('30 min', style: TextStyle(fontSize: 20, color: Colors.red, fontStyle: FontStyle.italic),),
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (_) => ChickenStrogScreen()));
                        },
                        child: Container(
                          child: Text('Chicken Stroganoff', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                        ),
                      ),
                      Container(
                        child: Text('1 hour', style: TextStyle(fontSize: 20, color: Colors.red, fontStyle: FontStyle.italic),),
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
                    ],
                  ),
                ),
              ),
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
                color: Colors.blue[800],
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
