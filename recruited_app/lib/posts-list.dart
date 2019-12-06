import 'package:flutter/material.dart';

class PostList extends StatefulWidget {
  @override
  _PostList createState() => _PostList();
}

class _PostList extends State<PostList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
      itemCount: 9,
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(

      )
          : new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage("https://scontent-lax3-1.xx.fbcdn.net/v/t1.0-9/s960x960/73254958_10222131323011895_9170646129270849536_o.jpg?_nc_cat=109&_nc_ohc=dAJdffyot9MAQkjbEkzTtK_o6QLLmQhW-NpRxAAlwFn3PZs9DnO_fuH8Q&_nc_ht=scontent-lax3-1.xx&oh=6a2aae825e204f8605f879e5382c6ec8&oe=5E85C201")),
                      ),
                    ),
                    new SizedBox(
                      width: 10.0,
                    ),
                    new Text(
                      "benjaavro",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                new IconButton(
                  icon: Icon(Icons.add_circle_outline),
                  onPressed: null,
                ),
              ],
            ),
          ),
          /*Flexible(
              fit: FlexFit.loose,
              child: new Image.network(
                  "https://scontent-lax3-1.xx.fbcdn.net/v/t1.0-9/s960x960/73254958_10222131323011895_9170646129270849536_o.jpg?_nc_cat=109&_nc_ohc=dAJdffyot9MAQkjbEkzTtK_o6QLLmQhW-NpRxAAlwFn3PZs9DnO_fuH8Q&_nc_ht=scontent-lax3-1.xx&oh=6a2aae825e204f8605f879e5382c6ec8&oe=5E85C201",
                fit: BoxFit.cover,
              ),
            ),*/
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 0.0, 0.0),
            child: Text(
              "Post Description",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Date",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          /*Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                          "https://scontent-lax3-1.xx.fbcdn.net/v/t1.0-9/s960x960/73254958_10222131323011895_9170646129270849536_o.jpg?_nc_cat=109&_nc_ohc=dAJdffyot9MAQkjbEkzTtK_o6QLLmQhW-NpRxAAlwFn3PZs9DnO_fuH8Q&_nc_ht=scontent-lax3-1.xx&oh=6a2aae825e204f8605f879e5382c6ec8&oe=5E85C201",
                        ),
                      ),
                    ),
                  ),
                  new SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        hintText: "Add a comment...",
                      ),
                    ),
                  ),
                ],
              ),
            ),*/
        ],
      ),
    );
  }
}