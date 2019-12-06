import 'package:flutter/material.dart';
import 'package:recruited_app/login.dart';
import 'athleteDAO.dart';
import 'database.dart';

Future<void> main() async {

  final database = await $FloorAppDatabase
      .databaseBuilder('app_database.db')
      .build();
  final dao = database.athleteDao;

  runApp(MyApp(dao));
}

class MyApp extends StatelessWidget {
  final AthleteDao dao;

  const MyApp(this.dao);
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