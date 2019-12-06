import 'package:flutter/material.dart';
import 'package:recruited_app/home.dart';
import 'package:recruited_app/login.dart';
import 'package:recruited_app/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context,) {
    return new MaterialApp(
      title: 'Recruited',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.grey[800],
        primaryIconTheme: IconThemeData(color: Colors.grey[800]),
        primaryTextTheme: TextTheme(
            title: TextStyle(
                color: Colors.grey[800],
                fontFamily: "Roboto-Regular")
        ),
        textTheme: TextTheme(
            title: TextStyle(
                color: Colors.grey[800])
        ),
        accentColor: Colors.blueAccent[700],
      ),
      home: new LogIn(),
    );
  }
}