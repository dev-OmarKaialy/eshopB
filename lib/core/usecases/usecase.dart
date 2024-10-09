import 'package:dartz/dartz.dart';
import 'package:eshop_b/core/api/error/failure.dart';
import 'package:eshop_b/core/helper/src/typedef.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class UseCaseParams {
  BodyMap getBody() => {};

  QueryParams getParams() => {};
}

class NoParams implements UseCaseParams {
  @override
  BodyMap getBody() => {};

  @override
  QueryParams getParams() => {};
}
