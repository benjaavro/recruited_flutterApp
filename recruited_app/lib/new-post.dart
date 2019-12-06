import 'package:flutter/material.dart';

import 'athlete.dart';
import 'database.dart';
import 'home.dart';
import 'globals.dart' as globals;

final textController = TextEditingController();

Future insertNewPostIntoDB() async {
  final database = await $FloorAppDatabase
      .databaseBuilder('app_database.db')
      .build();

  final dao = database.athleteDao;

  String content = textController.text;

  final dummy = Post(null, globals.id, content);

  final post = await dao.insertPost(dummy);

  //print(post);
}

class NewPost extends StatefulWidget {
  @override
  _NewPost createState() => _NewPost();
}

class _NewPost extends State<NewPost> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new Padding(padding: const EdgeInsets.symmetric(vertical: 15.0)),
        new Text(
          "NEW POST",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        new Padding(padding: const EdgeInsets.symmetric(vertical: 10.0)),
        new Text(
          "Description",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15.0,
          ),
        ),
        new SizedBox(
            width: 300.0,
            child: new TextField(
              controller: textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Write something here',
              ),
            ),
        ),
        new Padding(padding: const EdgeInsets.symmetric(vertical: 15.0)),
        new Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new FlatButton(
                onPressed: () {
                  insertNewPostIntoDB();
                },
                child: Text(
                  "POST",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                    fontSize: 15.0,
                  ),
                ),
            ),
            new Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0)),

          ],
        ),
      ],
    );
  }
}