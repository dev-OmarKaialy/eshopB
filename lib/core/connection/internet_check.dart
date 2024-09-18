import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class InternetServicesChecker {
  Future<bool> get statusConnection;
}

class InternetServicesCheckerImp extends InternetServicesChecker {
  final InternetConnectionChecker internetConnectionChecker;
  InternetServicesCheckerImp(this.internetConnectionChecker);
  @override
  get statusConnection => internetConnectionChecker.hasConnection;
}
