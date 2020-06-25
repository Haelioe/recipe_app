import 'package:flutter/material.dart';

class ChickenStrogScreen extends StatefulWidget {
  @override
  _ChickenStrogScreenState createState() => _ChickenStrogScreenState();
}

class _ChickenStrogScreenState extends State<ChickenStrogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chicken Stroganoff"),
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
                'assets/chicken.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              SizedBox(height: 120),
              Text(
                'Chicken Stroganoff',
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
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
