import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';         // NEW
import 'app.dart';
import 'model/app_state_model.dart';             // NEW

void main() {
 SystemChrome.setPreferredOrientations(
     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

 return runApp(
   //wiring the AppStateModel at the top of the widget tree to make it available throughout the entire app.
  //ChangeNotifierProvider monitors AppStateModel for change notifications.
   ChangeNotifierProvider<AppStateModel>(        // NEW
     builder: (context) => AppStateModel()..loadProducts(),                               // NEW
     child: CupertinoStoreApp(),                 // NEW
   ),
 );
}