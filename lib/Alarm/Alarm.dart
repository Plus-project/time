// ignore_for_file: file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:time/Alarm/BtmSheet.dart';
import 'package:intl/intl.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Alarm',
          style: TextStyle(color: Colors.lightBlue),
        ),
      ),
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
                alignment: Alignment.centerLeft,
                color: Colors.red,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    'delete',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              secondaryBackground: Container(
                alignment: Alignment.centerRight,
                color: Colors.red,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                  child: Text(
                    'delete',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        alarmList[index],
                        style: const TextStyle(
                            fontSize: 50, color: Colors.lightBlue),
                      ),
                      onTap: () {
                        btmSheet(context);
                      },
                    ),
                    const Divider(
                      thickness: 0.0,
                      color: Colors.lightBlue,
                      height: 0,
                    )
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          var now = DateTime.now();
          var formatter = DateFormat('HH:mm');
          var timeString = formatter.format(now);
          alarmList.add(timeString);
          btmSheet(context);
          setState(() {});
        },
      ),
    );
  }
}
