import 'package:eshop_b/core/connection/internet_check.dart';
import 'package:eshop_b/core/services/api_service.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

setup() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);
  getIt.registerSingleton<InternetConnectionChecker>(
      InternetConnectionChecker());
  getIt.registerSingleton<InternetServicesCheckerImp>(
      InternetServicesCheckerImp(getIt.get<InternetConnectionChecker>()));
  getIt.registerSingleton<ApiService>(ApiService());
}
