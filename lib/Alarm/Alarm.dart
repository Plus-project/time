// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({Key? key}) : super(key: key);

  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  List<String> alarmList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: alarmList.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: Key(alarmList[index]),
              onDismissed: (direction) {
                setState(() {
                  alarmList.removeAt(index);
                });
              },
              background: Container(
                alignment: Alignment.centerRight,
                color: Colors.red,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Icon(Icons.delete_outline),
                ),
              ),
              child: Card(
                child: ListTile(
                  title: Text(alarmList[index],
                      style: const TextStyle(
                          fontSize: 30, color: Colors.lightBlue)),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          alarmList.add('00:00');
          setState(() {});
        },
      ),
    );
  }
}
