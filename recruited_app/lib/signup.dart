import 'package:flutter/material.dart';

import 'package:recruited_app/login.dart';

Future navigateToLogIn(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()));
}

class SignUp extends StatefulWidget {
  @override
  _SignUp createState() => _SignUp();
}

class _SignUp extends State<SignUp>{
  @override
  Widget build(BuildContext context) {
    bool male = false;
    bool female = false;

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
            /*new Center(
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
            ),*/
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