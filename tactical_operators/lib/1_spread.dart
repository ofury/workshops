import 'package:flutter/material.dart';

List<int> joinCollectionsWithoutSpread() {
  final collection = [1, 2, 3];
  final otherCollection = [4, 5, 6];
  collection.addAll(otherCollection);
  return collection;
}

List<int> joinCollectionsWithSpread() {
  final collection = [1, 2, 3];
  final otherCollection = [4, 5, 6];
  return [...collection, ...otherCollection];
}

class MyWidget extends StatelessWidget {
  final showLoginUI = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Text('Fake email input'),
        Text('Fake password input'),
        if (showLoginUI) ...[
          RaisedButton(
            child: Text('Login'),
            onPressed: () {},
          ),
          FlatButton(
            child: Text('Forgotten Password'),
            onPressed: () {},
          ),
        ],
        if (!showLoginUI)
          RaisedButton(
            child: Text('Register'),
            onPressed: () {},
          ),
      ],
    );
  }
}
