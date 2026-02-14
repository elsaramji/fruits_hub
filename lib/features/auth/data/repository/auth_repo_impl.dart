import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:fruits_hub/core/services/apis/errors/request_error.dart';
import 'package:fruits_hub/core/services/apis/rest_api_helper.dart';
import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_enitties.dart';
import 'package:fruits_hub/features/auth/domain/repository/auth_repo_interface.dart';
import '../../../../core/services/apis/constant/api_constant.dart';
import '../../../../core/services/storage/secure_storage.dart';

@LazySingleton(as: AuthRepoInterface)
class AuthRepoImpl implements AuthRepoInterface {
  final RestApi _restApi;
  final SecureStorage _secureStorage;
  AuthRepoImpl(this._restApi, this._secureStorage);
  @override
  Future<Either<RequestError, UserEntity>> login({
    required String email,
    required String password,
  }) async {
    final result = await _restApi.post(
      ApiConstant.loginPath,
      data: {'email': email, 'password': password},
    );
    return result.fold((error) => Left(error), (response) async {
      final user = UserModel.fromJson(response.data);
      await _secureStorage.saveToken(user.token);
      return Right(user);
    });
  }

  @override
  Future<Either<RequestError, UserEntity>> register({
    required String name,
    required String email,
    required String password,
  }) async {
    final result = await _restApi.post(
      ApiConstant.registerPath,
      data: {'name': name, 'email': email, 'password': password},
    );

    return result.fold((error) => Left(error), (response) async {
      final user = UserModel.fromJson(response.data);
      await _secureStorage.saveToken(user.token);
      return Right(user);
    });
  }

  @override
  Future<Either<RequestError, void>> logout() async {
    final result = await _restApi.post(ApiConstant.logoutPath);

    return result.fold((error) => Left(error), (_) => const Right(null));
  }
}
