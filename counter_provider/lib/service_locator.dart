import 'storage_service_fake.dart';
import 'package:get_it/get_it.dart';
import 'storage_service.dart';
import 'storage_service_shared_pref.dart';

GetIt locator = GetIt.instance;

setupServiceLocator() {
  locator.registerLazySingleton<StorageService>(() => StorageServiceSharedPreferences());
}