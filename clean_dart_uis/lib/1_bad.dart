import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  // Fake data. This would come from an API.
  final profileTags = [
    'Favorite',
    'App Developer',
    'Flutter Enthusiast',
    'Android Developer'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: () {},
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Center(
            child: CircleAvatar(
              child: Icon(
                Icons.person,
                size: 100,
              ),
              radius: MediaQuery.of(context).size.width / 4,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'John Doe',
            style: Theme.of(context).textTheme.display1,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sodales vestibulum magna, vitae tincidunt sapien.'),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Wrap(
              spacing: 5,
              children: tagsToChips(profileTags).toList(),
            ),
          )
        ],
      ),
    );
  }

  Iterable<Chip> tagsToChips(List<String> tags) sync* {
    for (var tag in tags) {
      yield Chip(label: Text(tag));
    }
  }
}
