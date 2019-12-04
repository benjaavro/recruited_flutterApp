import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

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
                    autofocus: true,
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
              new Center(
                child: new SizedBox(
                  height: 40.0,
                  width: 200.0,
                  child: TextFormField(
                    obscureText: true,
                    autofocus: true,
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
                        onPressed: null,
                        color: Colors.white,
                        textColor: Colors.white,
                        splashColor: Colors.green,
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
                        onPressed: null,
                        color: Colors.white,
                        textColor: Colors.white,
                        splashColor: Colors.green,
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