import 'package:flutter/material.dart';
import 'package:recipeapp/screens/favorites_screen.dart';
import 'package:recipeapp/screens/home_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.amber[25],
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  shape: BoxShape.circle,
                ),
                  child: Icon(
                    Icons.person,
                    size: 75,
                    color: Colors.black87,
                  ),
              ),
            ),
            SizedBox(height: 10),
            Text('Username', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 30)

          ],
        ),
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
          Container(
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
        ],
      ),
    );
  }
}
