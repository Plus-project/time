import 'package:flutter/material.dart';

class ListAdd extends StatefulWidget {
  @override
  _ListAddState createState() => _ListAddState();
}

class _ListAddState extends State<ListAdd> {
  String _text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_text, style: TextStyle(color: Colors.blue)),
            const SizedBox(height: 14),
            TextField(/* --- 省略 --- */),
            const SizedBox(height: 14),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(_text);
                },
                child: Text('アラームを追加', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 8),
            Container(/* --- 省略 --- */),
          ],
        ),
      ),
    );
  }
}
