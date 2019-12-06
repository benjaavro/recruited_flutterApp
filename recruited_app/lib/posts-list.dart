import 'package:flutter/material.dart';

import 'database.dart';
import 'globals.dart' as globals;
import 'athlete.dart';
import 'athleteDAO.dart';

var contenido = "hola";
var largo = 0;
bool data = true;

class PostList extends StatefulWidget {
  @override
  _PostList createState() => _PostList();
}

final TextEditingController eCtrl = new TextEditingController();

Future getDbPost() async {
  final database = await $FloorAppDatabase
      .databaseBuilder('app_database.db')
      .build();

  final dao = database.athleteDao;

  //List<String> items = [];

  List<Post> postList = await dao.findAllPost();
  for (var i = 0; i < postList.length; i++) {
    print(postList[i].content);
    _buildPost(postList[i]);
    //items[i] = postList[i].content;
  }
  //print(postList.length);
  largo = postList.length;
  //print(postList[0].content);

  data = false;
}

Widget _buildPost(Post post) {
  new Column(
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
          post.content,
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
  );
}

class _PostList extends State<PostList> {
  @override
  Widget build(BuildContext context) {
    String content = contenido;

    changeText() {
      setState(() {
        String content = contenido;
      });
    }
    if(data == true){
      getDbPost().then((erg){changeText();});
    }

    return new ListView.builder(
      itemCount: largo,
      itemBuilder: (context, index) => index == index++
          ? new SizedBox(

      )
          : getDbPost(),
      );
  }
}
