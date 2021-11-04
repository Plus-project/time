import 'package:flutter/material.dart';
import 'package:time/Clock/TimeContainer.dart';

class DigitalClockRenderer extends StatelessWidget {
  final DateTime time;
  final double digitwidth;
  final TextStyle? style;
  
  const DigitalClockRenderer({ 
    Key? key,
    required this.time,
    this.digitwidth = 12.0,
    this.style,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TimeContainer(
              time: time.hour,
              digits: 2,
              digitWidth: digitwidth,
              suffix: ':',
              style: style,
            ),
            TimeContainer(
              time: time.minute,
              digits: 2,
              digitWidth: digitwidth,
              suffix: ':',
              style: style,
            ),
            TimeContainer(
              time: time.second,
              digits: 2,
              digitWidth: digitwidth,
              style: style,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TimeContainer(
              time: time.millisecond,
              digits: 3,
              digitWidth: digitwidth,
              style: style,
              )
          ],
        )
      ],
    );
  }
}