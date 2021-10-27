import 'package:flutter/material.dart';
import 'ListAdd.dart';

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
      floatingActionButton: ElevatedButton(
        onPressed: () async {
          final newListText = await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return ListAdd();
            }),
          );
          if (newListText != null) {
            setState(() {
              alarmList.add(newListText);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
