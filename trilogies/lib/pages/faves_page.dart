import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trilogies/models/faves.dart';
import 'package:trilogies/widgets/film_item.dart';

class FavesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var faves = Provider.of<FavesModel>(context);
    var favesCount = faves.length;

    if (favesCount == 0) {
      var style = Theme.of(context).textTheme.title;
      return Center(
        child: Text(
          'No favorites selected',
          style: style,
        ),
      );
    }

    return Container(
      child: Column(
        children: <Widget>[
          _FavesSize(),
          Divider(height: 4, color: Colors.black),
          Expanded(
            child: ListView.builder(
                itemCount: favesCount,
                itemBuilder: (BuildContext context, int position) {
                  var id = faves.getByPosition(position).episodeId;
                  return FilmItem(id);
                }),
          ),
        ],
      ),
    );
  }
}

class _FavesSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle =
        Theme.of(context).textTheme.body1.copyWith(color: Colors.white);

    return Container(
      color: Theme.of(context).accentColor,
      child: SizedBox(
        height: 40,
        child: Center(child: Consumer<FavesModel>(builder: (_, faves, __)
        {
          var label = faves.length == 1 ? 'favorite' : 'favorites';
          return Text('${faves.length} $label', style: textStyle);
        },)),
    ),
    );
  }
}
