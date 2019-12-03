import 'package:flutter/material.dart';

class FilmsModel {
  static const _films = [
    Film(1, 'The Phantom Menace', Colors.blue, Colors.white),
    Film(2, 'Attack of the Clones', Colors.purple, Colors.white),
    Film(3, 'Revenge of the Sith', Colors.red, Colors.white),
    Film(4, 'A New Hope', Colors.yellow, Colors.black),
    Film(5, 'The Empire Strikes Back', Colors.grey, Colors.white),
    Film(6, 'Return of the Jedi', Colors.blue, Colors.white),
    Film(7, 'The Force Awakens', Colors.yellow, Colors.black),
    Film(8, 'The Last Jedi', Colors.red, Colors.white),
    Film(9, 'The Rise of Skywalker', Colors.blue, Colors.white),
  ];

  int get length => _films.length;

  Film getById(int id) => _films[id - 1];

  Film getByPosition(int position) => _films[position];
}

class Film {
  final int episodeId;
  final String name;
  final Color backgroundColor;
  final Color iconColor;

  const Film(this.episodeId, this.name, this.backgroundColor, this.iconColor);
}
