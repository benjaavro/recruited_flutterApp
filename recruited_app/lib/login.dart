import 'package:flutter/material.dart';
import 'package:recruited_app/signup.dart';
import 'package:recruited_app/home.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:encrypt/encrypt.dart' as cy;
import 'package:encrypt/encrypt.dart' ;
//import 'package:flutter/services.dart';

final _usernameController = TextEditingController();
final _passwordController = TextEditingController();

Future navigateToSignUp(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
}

Future navigateToHome(context) async {
  String username = _usernameController.text;
  String password = _passwordController.text;
  var url = 'http://192.168.0.116:3000/mobile/get';
  var response = await http.post(url, body: {'Mail': username});
  var jsonResponse = convert.jsonDecode(response.body);
  var data = jsonResponse[0];
  var id = data['id'];
  final key = cy.Key.fromLength(32);
  final iv = IV.fromLength(16);
  final encrypter = Encrypter(AES(key));
  final decrypted = encrypter.decrypt16(data['password'], iv: iv);

  if(password == decrypted) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home(id: id)));
  }
}

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: new Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Center(
                child: new SizedBox(
                  width: 250.0,
                  child: Image.asset("assets/images/RECRUITED_LOGO-05.png"),
                ),
              ),
              new Center(
                child: new SizedBox(
                  height: 40.0,
                  width: 200.0,
                  child: TextFormField(
                    controller: _usernameController,
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
                  width: 200.0,
                  child: TextFormField(
                    controller: _passwordController,
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
                  padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new RaisedButton(
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          navigateToHome(context);
                        },
                        color: Theme.of(context).accentColor,
                        textColor: Colors.white,
                        //splashColor: Colors.green,
                      ),
                      new Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      ),
                      new RaisedButton(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          navigateToSignUp(context);
                        },
                        color: Theme.of(context).primaryColor,
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