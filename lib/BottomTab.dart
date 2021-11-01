// ignore_for_file: file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:time/Alarm/Alarm.dart';
import 'package:time/Clock/Clock.dart';
import 'package:time/StopWatch/StopWatch.dart';
import 'package:time/Timer/Timer.dart';

class BottomTabPage extends StatefulWidget {
  const BottomTabPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BottomTabPageState();
  }
}

class _BottomTabPageState extends State<BottomTabPage> {
  int _currentIndex = 0;
  final _pageWidgets = [const ClockPage(), const AlarmPage(), const TimerPage(), const StopWatchPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.0),
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: _pageWidgets.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
              icon: Icon(Icons.access_time), title: Text('Clock')),
          const BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text('Alarm')),
          const BottomNavigationBarItem(
              icon: Icon(Icons.av_timer), title: Text('Timer')),
          const BottomNavigationBarItem(
              icon: Icon(Icons.shutter_speed), title: Text('StopWatch')),
        ],
        currentIndex: _currentIndex,
        fixedColor: Colors.blueAccent,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
      ),
    );
  }

  void _onItemTapped(int index) => setState(() => _currentIndex = index);
}
