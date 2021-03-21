import 'package:flutter/material.dart';
import 'package:new_app/pages/login_page.dart';
import 'package:new_app/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs = await SharedPreferences.getInstance();
  runApp(
    MaterialApp(
      title: 'Hi flutter',
      home: Constants.prefs.getBool('LoggedIn') == true ? MyApp() : LoginPage(),
      theme: ThemeData(primaryColor: Colors.teal[800]),
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => MyApp(),
      },
    ),
  );
}
