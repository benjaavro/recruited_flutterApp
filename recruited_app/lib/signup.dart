import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
//import 'package:convert/convert.dart' as convert;

import 'package:encrypt/encrypt.dart' as cy;
import 'package:encrypt/encrypt.dart';

import 'package:recruited_app/login.dart';
import 'athlete.dart';
import 'database.dart';

final nameController = TextEditingController();
final emailController = TextEditingController();
final passwordController = TextEditingController();
final sportController = TextEditingController();
final teamController = TextEditingController();
final ageController = TextEditingController();


Future navigateToLogIn(context) async {
  insertIntoDB();
  Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()));
}

Future insertIntoDB() async {
  final database = await $FloorAppDatabase
      .databaseBuilder('app_database.db')
      .build();

  final dao = database.athleteDao;

  String name = nameController.text;
  String email = emailController.text;
  String password = passwordController.text;
  String sport = sportController.text;
  String team = teamController.text;
  int age = int.parse(ageController.text);

  final dummy = Athlete(null, name, email, sport, team, age);

  /*var url = 'http://192.168.0.116:3000/mobile/insert';

  final key = cy.Key.fromLength(32);
  final iv = cy.IV.fromLength(16);
  final encrypter = Encrypter(AES(key));
  final encrypted = encrypter.encrypt(password, iv: iv);


  var response = await http.post(url, body: {'Mail': email, 'Password': encrypted.base16});

  print(response);*/

  final athlete = await dao.insertAthlete(dummy);

}

class SignUp extends StatefulWidget {
  @override
  _SignUp createState() => _SignUp();
}

class _SignUp extends State<SignUp>{
  @override
  Widget build(BuildContext context) {
    //bool male = false;
    //bool female = false;

    // TODO: implement build
    return new Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: new Center(
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              centerTitle: true,
              elevation: 0.0,
              leading: IconButton(
                icon: Icon(
                  Icons.backspace,
                  color: Colors.white,
                ),
                onPressed: () {
                  navigateToLogIn(context);
                },
              ),
            ),
            new Center(
              child: new SizedBox(
                width: 150.0,
                child: Image.asset("assets/images/RECRUITED_LOGO-05.png"),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "SIGN UP NOW!",
                  style: TextStyle(
                    fontFamily: "BebasNeue-Regular",
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
            ),
            new Center(
              child: new SizedBox(
                height: 40.0,
                width: 250.0,
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(
                        color: Colors.white,
                        width: 1.0,
                      ),
                    ),
                    filled: true,
                    labelText: "Name",
                    labelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
            ),
            new Center(
              child: new SizedBox(
                height: 40.0,
                width: 250.0,
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(
                        color: Colors.white,
                        width: 1.0,
                      ),
                    ),
                    filled: true,
                    labelText: "email",
                    labelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
            ),
            new Center(
              child: new SizedBox(
                height: 40.0,
                width: 250.0,
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(
                        color: Colors.white,
                        width: 1.0,
                      ),
                    ),
                    filled: true,
                    labelText: "password",
                    labelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
            ),
            new Center(
              child: new SizedBox(
                height: 40.0,
                width: 250.0,
                child: TextFormField(
                  controller: sportController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(
                        color: Colors.white,
                        width: 1.0,
                      ),
                    ),
                    filled: true,
                    labelText: "Sport",
                    labelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
            ),
            new Center(
              child: new SizedBox(
                height: 40.0,
                width: 250.0,
                child: TextFormField(
                  controller: teamController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(
                        color: Colors.white,
                        width: 1.0,
                      ),
                    ),
                    filled: true,
                    labelText: "Team",
                    labelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
            ),
            new Center(
              child: new SizedBox(
                height: 40.0,
                width: 250.0,
                child: TextFormField(
                  controller: ageController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderSide: new BorderSide(
                        color: Colors.white,
                        width: 1.0,
                      ),
                    ),
                    filled: true,
                    labelText: "Age",
                    labelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
            ),
            new Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                          "Male",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Checkbox(
                        checkColor: Theme.of(context).accentColor,
                        value: male,
                        onChanged: (bool value) {
                          setState(() {
                            male = value;
                          });
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "Female",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Checkbox(
                        checkColor: Theme.of(context).accentColor,
                        value: female,
                        onChanged: (bool value) {
                          setState(() {
                            female = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(

                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      navigateToLogIn(context);
                    },
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}