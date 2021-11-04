import 'package:flutter/cupertino.dart';
import 'package:time/Clock/DigitalClockRenderer.dart';

class ConsolidatedClock extends StatelessWidget {
  final DateTime time;

  const ConsolidatedClock({
    Key? key,
    required this.time
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: DigitalClockRenderer(time: time),
        ),
      ],
    );
  }
}