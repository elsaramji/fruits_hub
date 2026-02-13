import 'package:dartz/dartz.dart' show Either;
import 'package:fruits_hub/core/services/errors/request_error.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_enitties.dart';

abstract interface class AuthRepoInterface {
  Future<Either<RequestError, UserEntity>> login({
    required String email,
    required String password,
  });
  Future<Either<RequestError, UserEntity>> register({
    required String name,
    required String email,
    required String password,
  });
  Future<Either<RequestError, void>> logout();
}

