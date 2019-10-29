import 'package:flutter/material.dart';

class ProfileTags extends StatelessWidget {
  const ProfileTags({
    Key key,
    @required this.profileTags,
  }) : super(key: key);

  final List<String> profileTags;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Wrap(
        spacing: 5,
        children: <Widget>[
          for (var tag in profileTags)
            Chip(
              label: Text(tag),
            ),
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