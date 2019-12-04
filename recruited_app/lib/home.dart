import 'package:flutter/material.dart';
import 'package:recruited_app/home-body.dart';
import 'package:recruited_app/login.dart';


Future LogOut(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  TabController _tabController;

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
                  LogOut(context);
                },
              ),
            )
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
          children: [
            new HomeBody(),
            Icon(Icons.directions_transit),

          ],
      ),
      bottomNavigationBar: DefaultTabController(
          length: 5,
          child: new Container(
            color: Colors.white,
            height: 50.0,
            alignment: Alignment.center,
            child: new BottomAppBar(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new IconButton(
                    color: Theme.of(context).primaryColor,
                    icon: Icon(Icons.home),
                    onPressed: () {

                    },
                  ),
                  new IconButton(
                      color: Theme.of(context).primaryColor,
                      icon: Icon(Icons.list),
                      onPressed: () {}
                  ),
                  new IconButton(
                      color: Theme.of(context).primaryColor,
                      icon: Icon(Icons.add_box),
                      onPressed: () {}
                  ),
                  new IconButton(
                      color: Theme.of(context).primaryColor,
                      icon: Icon(Icons.settings),
                      onPressed: () {}
                  ),
                  new IconButton(
                      color: Theme.of(context).primaryColor,
                      icon: Icon(Icons.person),
                      onPressed: () {}
                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }
}

/*
* new Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: new BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                  color: Theme.of(context).primaryColor,
                  icon: Icon(Icons.home),
                  onPressed: () {

                  },
                  ),
              new IconButton(
                  color: Theme.of(context).primaryColor,
                  icon: Icon(Icons.list),
                  onPressed: () {}
              ),
              new IconButton(
                  color: Theme.of(context).primaryColor,
                  icon: Icon(Icons.add_box),
                  onPressed: () {}
              ),
              new IconButton(
                  color: Theme.of(context).primaryColor,
                  icon: Icon(Icons.settings),
                  onPressed: () {}
              ),
              new IconButton(
                  color: Theme.of(context).primaryColor,
                  icon: Icon(Icons.person),
                  onPressed: () {}
              ),
            ],
          ),
        ),
      ),
* */