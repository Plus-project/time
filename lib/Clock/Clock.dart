// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ClockPage extends StatelessWidget {
  const ClockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
