import 'package:flutter/material.dart';

class HoneyChicken extends StatefulWidget {
  @override
  _HoneyChickenState createState() => _HoneyChickenState();
}

class _HoneyChickenState extends State<HoneyChicken> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Honey Garlic Chicken"),
        automaticallyImplyLeading: false,

      ),

    );
  }
}
