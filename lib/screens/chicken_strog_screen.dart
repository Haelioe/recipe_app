import 'package:flutter/material.dart';

class ChickenStrogScreen extends StatefulWidget {
  @override
  _ChickenStrogScreenState createState() => _ChickenStrogScreenState();
}

class _ChickenStrogScreenState extends State<ChickenStrogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(title:Text("Chicken Stroganoff"),
        automaticallyImplyLeading: false,

      ),
    );
  }
}
