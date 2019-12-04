import 'package:flutter/material.dart';
import 'package:recruited_app/login.dart';

import 'home.dart';

Map<int, Color> black =
{
  50:Color.fromRGBO(38, 38, 38, .1),
  100:Color.fromRGBO(38, 38, 38, .2),
  200:Color.fromRGBO(38, 38, 38, .3),
  300:Color.fromRGBO(38, 38, 38, .4),
  400:Color.fromRGBO(38, 38, 38, .5),
  500:Color.fromRGBO(38, 38, 38, .6),
  600:Color.fromRGBO(38, 38, 38, .7),
  700:Color.fromRGBO(38, 38, 38, .8),
  800:Color.fromRGBO(38, 38, 38, .9),
  900:Color.fromRGBO(38, 38, 38, 1),
};

MaterialColor customBlack = MaterialColor(0xFF880E4F, black);

Map<int, Color> blue =
{
  50:Color.fromRGBO(21, 105, 255, .1),
  100:Color.fromRGBO(21, 105, 255, .2),
  200:Color.fromRGBO(21, 105, 255, .3),
  300:Color.fromRGBO(21, 105, 255, .4),
  400:Color.fromRGBO(21, 105, 255, .5),
  500:Color.fromRGBO(21, 105, 255, .6),
  600:Color.fromRGBO(21, 105, 255, .7),
  700:Color.fromRGBO(21, 105, 255, .8),
  800:Color.fromRGBO(21, 105, 255, .9),
  900:Color.fromRGBO(21, 105, 255, 1),
};

MaterialColor customBlue = MaterialColor(0xFF880E4F, blue);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Recruited',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.grey[800],
        primaryIconTheme: IconThemeData(color: Colors.grey[800]),
        primaryTextTheme: TextTheme(
            title: TextStyle(
                color: Colors.grey[800],
                fontFamily: "Roboto")
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