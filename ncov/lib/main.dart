import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:ncov/app/repositories/data_repository.dart';
import 'package:ncov/app/services/api.dart';
import 'package:ncov/app/services/api_service.dart';
import 'package:ncov/app/ui/dashboard.dart';
import 'package:provider/provider.dart';

void main() async {
  await initializeDateFormatting();
  Intl.defaultLocale = 'en_GB';
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<DataRepository>(
      create: (_) => DataRepository(
        apiService: APIService(API.sandbox()),
      ),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF101010),
          cardColor: Color(0xFF222222),
        ),
        home: Dashboard(),
      ),
    );
  }
}
