import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trilogies/models/films.dart';
import 'package:trilogies/widgets/film_item.dart';

class FilmsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var films = Provider.of<FilmsModel>(context);
    return ListView.builder(
itemCount: films.length,
itemBuilder: (BuildContext context, int position){
  return FilmItem(position +1);
},
    );
  }
}
