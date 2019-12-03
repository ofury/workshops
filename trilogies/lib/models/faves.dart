//FavesModel is a provider for the state of favorites in the app.
//It extends ChangeNotifier so that when favorites are added or removed, 
//users of the provider will be notified of the change and so their widgets can be rebuilt.

import 'package:flutter/widgets.dart';
import 'package:trilogies/models/films.dart';

class FavesModel extends ChangeNotifier{
  final FilmsModel _films;
  //The state being managed by FavesModel is the list of episode IDs being favorited.
  final List<int> _episodeIds;

//The constructor accepts a FilmsModel and also a previous version of the FavesModel
  FavesModel(this._films, FavesModel previous)
  : assert(_films !=null),
  //use previous FavesModel episode IDs if they are not null, otherwise set the state to an empty list.
  _episodeIds = previous?._episodeIds ?? [];

//turn the list of favorite episode IDs into a list of favorite films using the map function
  List<Film> get films  => _episodeIds.map((id)=> _films.getById(id)).toList();

  //get film favorited in the order it was favorited
  Film getByPosition(int position) => films[position];

  void add(Film film){
    _episodeIds.add(film.episodeId);
    notifyListeners();
  }

  void remove(Film film){
    _episodeIds.remove(film.episodeId);
    notifyListeners();
  }

  int get length => _episodeIds.length;
}