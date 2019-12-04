import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => new _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new Padding(padding: const EdgeInsets.symmetric(vertical: 10.0)),
        new Row(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 10.0, 10.0, 0.0),
            ),
            new Container(
              height: 90.0,
              width: 90.0,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage("https://scontent-lax3-1.xx.fbcdn.net/v/t1.0-9/s960x960/73254958_10222131323011895_9170646129270849536_o.jpg?_nc_cat=109&_nc_ohc=dAJdffyot9MAQkjbEkzTtK_o6QLLmQhW-NpRxAAlwFn3PZs9DnO_fuH8Q&_nc_ht=scontent-lax3-1.xx&oh=6a2aae825e204f8605f879e5382c6ec8&oe=5E85C201")),
              ),
            ),
            new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Center(
                      child: Text(
                        "Benjamin Avila Rosas",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
                new Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                ),
                new Row(
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    ),
                    new Column(
                      children: <Widget>[
                        new Text(
                          "Posts",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        new Text(
                          "342",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontFamily: "Roboto-Regular",
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    new Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    ),
                    new Column(
                      children: <Widget>[
                        new Text(
                          "Offers",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        new Text(
                          "15",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontFamily: "Roboto-Regular",
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}