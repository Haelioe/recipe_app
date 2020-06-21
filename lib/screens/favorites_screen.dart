import 'package:flutter/material.dart';
import 'package:recipeapp/screens/profile_screen.dart';

import 'home_screen.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Container(
              width: 300.0,
              height: 557.0,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [

                  Container(

                    child: Text('1) Chicken Stroganoff'),


                  ),
                  Container(

                    height: 200.0,
                    width:300.0,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Image.asset('assets/chicken.jpg', fit: BoxFit.cover,),


                  ),


                  SizedBox(height: 40.0),

                  Container(

                    child: Text('2) Chicken Parmesan Cutlets'),


                  ),
                  Container(

                    height: 200.0,
                    width:300.0,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Image.asset('assets/cutlet.jpg', fit: BoxFit.cover,),


                  ),


                  SizedBox(height: 40.0),

                  Container(

                    child: Text('3) Balsamic Glazed Chicken'),


                  ),
                  Container(

                    height: 200.0,
                    width:300.0,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Image.asset('assets/glazed.jpg', fit: BoxFit.cover,),


                  ),


                  SizedBox(height: 40.0),

                  Container(

                    child: Text('4) Honey Garlic Chicken'),


                  ),
                  Container(

                    height: 200.0,
                    width:300.0,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Image.asset('assets/honey.jpg', fit: BoxFit.cover,),


                  ),


                  SizedBox(height: 40.0),



                ],
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (_) => HomeScreen()));
            },
            child: Container(
              height: 60,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 3,
              decoration: BoxDecoration(
                color: Colors.blue[100],
              ),
              child: Icon(
                Icons.home,
                color: Colors.blue[300],
              ),
            ),
          ),
          Container(
            height: 60,
            width: MediaQuery
                .of(context)
                .size
                .width / 3,
            decoration: BoxDecoration(
              color: Colors.blue[100],
            ),
            child: Icon(
              Icons.star,
              color: Colors.blue[800],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (_) => ProfileScreen()));
            },
            child: Container(
              height: 60,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 3,
              decoration: BoxDecoration(
                color: Colors.blue[100],
              ),
              child: Icon(
                Icons.person,
                color: Colors.blue[300],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
