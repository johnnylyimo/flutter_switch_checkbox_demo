import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello_rectangle',
      theme: ThemeData(
        primaryColor: Colors.blueGrey.shade500,
        scaffoldBackgroundColor: Colors.blueGrey.shade200,
//        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white70, fontSize: 24.0),
        ),
      ),
      home: MyHomePage(),
    );
  }
}
