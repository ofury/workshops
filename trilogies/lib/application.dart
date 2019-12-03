import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trilogies/models/faves.dart';
import 'package:trilogies/models/films.dart';
import 'package:trilogies/pages/faves_page.dart';
import 'package:trilogies/pages/films_page.dart';

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int _selectedIndex = 0;
  final _appBarTitles = [
    Text('Films'),
    Text('Faves'),
  ];
  var _appBarTitleText = Text('Films');

  final _pageOptions = [
    FilmsPage(),
    FavesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(builder: (context) => FilmsModel()),
        ChangeNotifierProxyProvider<FilmsModel, FavesModel>(
          //builder function used to return the FavesModel 
          // builder gives access to the FilmsProvider 
          //and the previous version of the Favorites provider.
            builder: (context, films, previousFaves) =>
                FavesModel(films, previousFaves)),
      ],
      child: MaterialApp(
        title: 'Trilogies',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: _appBarTitleText,
          ),
          body: _pageOptions[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
                _appBarTitleText = _appBarTitles[index];
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.movie),
                title: Text('Films'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                title: Text('Faves'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
