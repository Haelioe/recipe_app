import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/screens/favorites_screen.dart';
import 'package:recipeapp/screens/home_screen.dart';
import 'package:recipeapp/screens/recents_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title:Text("Profile"),
        automaticallyImplyLeading: false,

      ),

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Username',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.add,
                  size: 15,
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(height: 30),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  '',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 5,
              color: Colors.grey[400],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (_) => RecentsScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width - 30,
                    color: Colors.blue[100],
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        'Recents',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.navigate_next,
                      color: Colors.grey,
                    ),
                    color: Colors.blue[100],
                    height: 60,
                    width: 30,
                  ),
                ],
              ),
            ),
            Container(
              height: 5,
              color: Colors.grey[400],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width - 30,
                  color: Colors.blue[100],
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      'Settings',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                  ),
                  color: Colors.blue[100],
                  height: 60,
                  width: 30,
                ),
              ],
            ),
            Container(
              height: 5,
              color: Colors.grey[400],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width - 30,
                  color: Colors.blue[100],
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      'Account',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                  ),
                  color: Colors.blue[100],
                  height: 60,
                  width: 30,
                ),
              ],
            ),
            Container(
              height: 5,
              color: Colors.grey[400],
            ),
            Container(
              height: 100,
              color: Colors.blue[100],
            ),
            Container(
              height: 2,
              color: Colors.black,
            ),
            Container(
              height: 75,
              color: Colors.purple[800],
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Log Out',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
            ),
            Container(
              height: 2,
              color: Colors.black,
            ),
            Container(
              height: 40,
              color: Colors.blue[100],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 61,
        color: Colors.grey[800],
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (_) => HomeScreen()));
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
      ),
    );
  }
}
