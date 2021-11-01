// ignore_for_file: file_names

import 'package:flutter/material.dart';

class StopWatchPage extends StatelessWidget {
  const StopWatchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "StopWatch Page",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
