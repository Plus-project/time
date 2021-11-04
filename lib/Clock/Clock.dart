import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

class ClockPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _textStyle = TextStyle(
      color: Colors.red,
      fontSize: 50,
    );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DigitalClock(
                  digitAnimationStyle: Curves.elasticOut,
                  is24HourTimeFormat: false,
                  areaDecoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  hourMinuteDigitTextStyle: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 50,
                  ),
                  amPmDigitTextStyle: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),              
                ),
              ],
            ),
          ),
        ));
  }
}