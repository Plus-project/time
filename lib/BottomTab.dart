import 'package:flutter/material.dart';
import 'package:time/Alarm.dart';
import 'package:time/Clock.dart';
import 'package:time/StopWatch.dart';
import 'package:time/Timer.dart';

class BottomTabPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomTabPageState();
  }
}

class _BottomTabPageState extends State<BottomTabPage> {
  int _currentIndex = 0;
  final _pageWidgets = [ClockPage(), AlarmPage(), TimerPage(), StopWatchPage()];

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
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time), title: Text('Clock')),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text('Alarm')),
          BottomNavigationBarItem(
              icon: Icon(Icons.av_timer), title: Text('Timer')),
          BottomNavigationBarItem(
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
