import 'package:get_it/get_it.dart';
import 'package:security_gdpr/core/services/auth_services.dart';

GetIt locator = GetIt.instance;
setupLocator() async {
  print("AuthServices calling");
  locator.registerLazySingleton(() => AuthServices());
  print("AuthServices registered");
}
