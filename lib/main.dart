import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'Hi flutter',
    home: MyApp(),
    theme: ThemeData(primaryColor: Colors.teal[800]),
    debugShowCheckedModeBanner: false,
  ));
}
