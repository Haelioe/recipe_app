import 'package:flutter/material.dart';
import 'package:recipeapp/screens/honey_chicken_screen.dart';
import 'package:recipeapp/screens/profile_screen.dart';
import 'package:recipeapp/screens/recents_screen.dart';
import 'package:recipeapp/screens/search_screen.dart';

import 'favorites_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  List<String> ingredients = List<String>();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Home"),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (_) => SearchScreen()));
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.amber[25],
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 130),
                SizedBox(width: 20),
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/logo.png'
                  ),
                ),
                SizedBox(width: 40),
                Text(
                  'Simply Food',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.amber[25],
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 70.0,
                width: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: TextField(
                  textInputAction: TextInputAction.done,
                  style: TextStyle(fontSize: 25, color: Colors.lightGreen),
                  autocorrect: false,
                  decoration: InputDecoration(icon: Icon(Icons.add)),
                  cursorColor: Colors.lightGreen,
                  onSubmitted: (text) {
                    setState(() {
                      ingredients.add(text);
                    });
                  },
                ),
              ),
            ),
          ),
          Container(
            height: 400,
            child: ListView.builder(
              itemCount: ingredients.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Center(
                    child: Text(
                      ingredients[index],
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
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
