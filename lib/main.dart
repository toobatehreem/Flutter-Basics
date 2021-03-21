import 'package:flutter/material.dart';
import 'package:new_app/pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Hi flutter',
      home: LoginPage(),
      theme: ThemeData(primaryColor: Colors.teal[800]),
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => MyApp(),
      },
    ),
  );
}
