
abstract class Failure {
  final String errorMessage;
  Failure({required this.errorMessage});
}

class OfflineFailure extends Failure {
  OfflineFailure({required super.errorMessage});
}

class EmptyLocalCacheFailure extends Failure {
  EmptyLocalCacheFailure({required super.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromStatusCode(int statusCode) {
    switch (statusCode) {
      case 500:
        return ServerFailure(errorMessage: "Internal Server Error");
      case 400:
        return ServerFailure(errorMessage: "Bad Request Error");
      case 404:
        return ServerFailure(errorMessage: "Not Found Method");
      case 403:
        return ServerFailure(errorMessage: "Sorry Forbidden in your country");
      case 422:
        return ServerFailure(
            errorMessage: "check your inputs some of them are not correct");
      default:
        return ServerFailure(errorMessage: "UnExcepted Error try later ");
    }
  }
}
