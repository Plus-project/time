import 'package:flutter/material.dart';

class AlarmPage extends StatefulWidget {
  @override
  _AlarmPageState createState() => _AlarmPageState();
}

List<String> alarmList = ['00:00', '00:00', '00:00'];

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: alarmList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  title: Text(alarmList[index]),
                ),
                Divider(
                  color: Colors.lightBlue,
                )
              ],
            );
          }),
    );
  }
}
