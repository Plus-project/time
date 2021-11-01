// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Text(
          "Timer Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
