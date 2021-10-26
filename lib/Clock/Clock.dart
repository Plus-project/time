import 'package:flutter/material.dart';

class ClockPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          "Time Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
