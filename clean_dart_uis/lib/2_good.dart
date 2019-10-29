import 'package:clean_dart_uis/widget/profile_tags_widget.dart';
import 'package:clean_dart_uis/widget/spacing_widgets.dart';
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
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          SpaceH10(),
          _buildProfilePicture(context),
          SpaceH10(),
          Text(
            'John Doe',
            style: Theme.of(context).textTheme.display1,
          ),
          SpaceH10(),
          Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sodales vestibulum magna, vitae tincidunt sapien.'),
          SpaceH10(),
          ProfileTags(profileTags: profileTags)
        ],
      ),
    );
  }

  Center _buildProfilePicture(BuildContext context) {
    final halfScreenRadius = MediaQuery.of(context).size.width / 4;

    return Center(
      child: CircleAvatar(
        child: Icon(
          Icons.person,
          size: 100,
        ),
        radius: halfScreenRadius,
      ),
    );
  }
}

