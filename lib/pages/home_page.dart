import 'package:flutter/material.dart';
import '../drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res =
        await http.get(Uri.https('jsonplaceholder.typicode.com', 'photos'));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi flutter'),
        backgroundColor: Colors.teal[800],
      ),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(data[index]['title']),
                      subtitle: Text("ID: ${data[index]['id']}"),
                      leading: Image.network(data[index]['url']),
                    ),
                  );
                },
                itemCount: data.length)
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.send),
        onPressed: () {
          setState(() {});
        },
        backgroundColor: Colors.teal,
        tooltip: 'Increment',
        elevation: 5,
      ),
      drawer: MyDrawer(),
    );
  }
}
