import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Hi flutter',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi flutter'),
        backgroundColor: Colors.teal[800],
      ),
      body: Container(
        child: Text(
          'Hi',
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
