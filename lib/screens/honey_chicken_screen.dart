import 'dart:ui';

import 'package:flutter/material.dart';

class HoneyChicken extends StatefulWidget {
  @override
  _HoneyChickenState createState() => _HoneyChickenState();
}

class _HoneyChickenState extends State<HoneyChicken> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Honey Garlic Chicken"),
        automaticallyImplyLeading: true,
      ),
      body: Stack(
        children: <Widget>[
          Opacity(
            opacity: .5,
            child: Container(
              height: MediaQuery.of(context).size.width * .75,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/honey.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              SizedBox(height: 120),
              Text(
                'Honey Garlic Chicken',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.grey[800]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 100),
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.amber[100]),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Cook Time:',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[800],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                '30 min',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red[400],
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.hourglass_empty),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
