import 'package:flutter/material.dart';
import 'ListAdd.dart';

class AlarmPage extends StatefulWidget {
  @override
  _AlarmPageState createState() => _AlarmPageState();
}

List<String> alarmList = [];

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: alarmList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text(
                  alarmList[index],
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          alarmList.add('00:00');
          setState(() {});
        },
      ),
    );
  }
}
