import 'package:flutter/material.dart';

class TimeContainer extends StatelessWidget {
  final int time;
  final int digits;
  final double digitWidth;
  final String? suffix;
  final TextStyle? style;

  const TimeContainer({
    Key? key,
    required this.time,
    required this.digits,
    this.digitWidth = 12.0,
    this.suffix,
    this.style,
  }) : super(key: key);

  String get timeText => time.toString().padLeft(digits, '0');

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for(var i = 0; i < digits; i++)...[
          Container(
            alignment: Alignment.center,
            width: digitWidth,
            child: Text(
              suffix ??'',
              style: style,
            ),
          )
        ]
      ],
    );
  }
}