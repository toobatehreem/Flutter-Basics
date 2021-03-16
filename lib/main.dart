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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Container(
            color: Colors.amber,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    height: MediaQuery.of(context).size.height / 3,
                    alignment: Alignment.center,
                    child: Text(
                      'Hello',
                      style: TextStyle(
                          fontFamily: 'Times New Roman', color: Colors.white),
                    ),
                    color: Colors.blue,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width / 4,
                    height: MediaQuery.of(context).size.height / 3,
                    child: Text(
                      'Hello1',
                      style: TextStyle(
                          fontFamily: 'Times New Roman', color: Colors.white),
                    ),
                    color: Colors.red,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width / 4,
                    height: MediaQuery.of(context).size.height / 3,
                    child: Text(
                      'Hello2',
                      style: TextStyle(
                          fontFamily: 'Times New Roman', color: Colors.white),
                    ),
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
