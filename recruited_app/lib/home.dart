import 'package:flutter/material.dart';
import 'package:recruited_app/home-body.dart';
import 'package:recruited_app/login.dart';
import 'package:recruited_app/new-post.dart';
import 'package:recruited_app/profile.dart';
import 'globals.dart' as globals;
Future logOut(context) async {
  globals.id=0;
  Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()));
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 4;
  static List<Widget> _widgetOptions = <Widget>[
    new HomeBody(),
    Text(
      'Index 1: List',
    ),
    new NewPost(),
    Text(
      'Index 3: Settings',
    ),
    new Profile(),
  ];

  static get id => null;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        elevation: 1.0,
        title: SizedBox(
              height: 35.0, child: Image.asset("assets/images/RECRUITED_LOGO-05.png"),),
        actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: IconButton(
                icon: Icon(
                  Icons.input,
                  color: Colors.white,
                ),
                onPressed: () {
                  logOut(context);
                },
              ),
            )
        ],
      ),
      body: new Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
                Icons.home,
                color: Colors.black54,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: Colors.black54,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box,
              color: Colors.black54,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black54,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black54,
            ),
            title: Text(''),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
