import 'package:dartz/dartz.dart';
import 'package:eshop_b/core/api/error/failure.dart';
import 'package:eshop_b/features/auth/data/models/user_model.dart';
import 'package:eshop_b/features/auth/domain/usecases/login_usecase.dart';
import 'package:eshop_b/features/auth/domain/usecases/register_usecase.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserModel>> register({required RegisterParams params});
  Future<Either<Failure, UserModel>> login({required LoginParams params});
}
