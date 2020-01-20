import 'package:firebase_authentication/services/authentication_service.dart';
import 'package:firebase_authentication/services/firestore_service.dart';
import 'package:get_it/get_it.dart';
import 'package:firebase_authentication/services/navigation_service.dart';
import 'package:firebase_authentication/services/dialog_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => FirestoreService());
}
