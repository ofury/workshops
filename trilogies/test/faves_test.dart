import 'package:flutter_test/flutter_test.dart';
import 'package:trilogies/models/faves.dart';
import 'package:trilogies/models/films.dart';

void main(){
  group('FavesModel',(){
    test ('favoriting increases the number of favorites',(){
final films = FilmsModel();
final faves = FavesModel(films, null);
final initialCount = faves.length;
faves.addListener(()
{
  expect(faves.length, greaterThan(initialCount));
});
faves.add(films.getByPosition(5));
    });

    test('unfavoriting one favorite reduces count ot zero.', (){
final films = FilmsModel();
final faves = FavesModel(films, null);
final film = films.getByPosition(5);
faves.add(film);
faves.addListener((){
expect(faves.length, equals(0));
});
faves.remove(film);
    });
  });
}