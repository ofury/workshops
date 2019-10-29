import 'package:flutter/material.dart';

List<int> withoutCascade() {
  final list = [5, 1, 3, 2, 4];
  list.sort();
  list.removeLast();
  return list;
}

List<int> withCascade() {
  return [5, 1, 3, 2, 4]
    ..sort()
    ..removeLast();
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Without: ${withoutCascade()}');
    print('With:    ${withCascade()}');
    return Container();
  }
}
