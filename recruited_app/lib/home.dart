import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            centerTitle: true,
            elevation: 1.0,
            title: SizedBox(
              height: 35.0,
              child: Image.asset("assets/images/RECRUITED_LOGO-05.png"),
            ),
            actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
        )],
      )
    );
  }
}