import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _pageData;
  bool get _fetchingData => _pageData == null;

  @override
  void initState() {
    _getListData(hasError: true).then((data) =>
        //when data retrieved call setState with that data
        setState(() {
          _pageData = data;
        })).catchError((error) =>setState((){
          _pageData = [error];
        }));
    super.initState();
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.grey[900],
    body: _fetchingData
    ? Center (child:CircularProgressIndicator())
    : ListView.builder(
      itemCount: _pageData.length,
      itemBuilder: (buildContext, index) =>_getListItemUi(index)
  ));
}

  //Return a list of data after 1 second to emulate network request
  Future<List<String>> _getListData({bool hasError = false}) async {
    await Future.delayed(Duration(seconds: 2));
    if (hasError){
      return Future.error('An error occurred while fetching the data. Please try again later.');
    }
    return List<String>.generate(10, (index) => '$index title');
  }

Widget _getListItemUi(int index) {
  return  Container(
        margin: EdgeInsets.all(5.0),
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.grey[600]
        ),
        child: Center(
          child: Text(_pageData[index], style: TextStyle(color: Colors.white,),
      ),
        ),
    );
}

}
