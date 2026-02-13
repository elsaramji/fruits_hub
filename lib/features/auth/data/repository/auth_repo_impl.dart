import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:fruits_hub/core/services/errors/request_error.dart';
import 'package:fruits_hub/core/services/rest_api_helper.dart';
import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_enitties.dart';
import 'package:fruits_hub/features/auth/domain/repository/auth_repo_interface.dart';
import '../../../../core/services/constant/api_constant.dart';

@LazySingleton(as: AuthRepoInterface)
class AuthRepoImpl implements AuthRepoInterface {
  final RestApi _restApi;
  AuthRepoImpl(this._restApi);
  @override
  Future<Either<RequestError, UserEntity>> login({
    required String email,
    required String password,
  }) async {
    final result = await _restApi.post(
      ApiConstant.loginPath,
      data: {'email': email, 'password': password},
    );

    /*var response = await Dio(BaseOptions(baseUrl: ApiConstant.baseUrl)).post(
      ApiConstant.loginPath,
      options: Options(headers: {'Content-Type': 'application/json'}),
      data: {'email': email, 'password': password},
    );*/
    // log(response.data.toString());
    return result.fold(
      (error) => Left(error),
      (response) => Right(UserModel.fromJson(response.data)),
    );
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

    return result.fold(
      (error) => Left(error),
      (response) =>
          Right(UserModel.fromJson(response.data as Map<String, dynamic>)),
    );
  }

  @override
  Future<Either<RequestError, void>> logout() async {
    final result = await _restApi.post(ApiConstant.logoutPath);

    return result.fold((error) => Left(error), (_) => const Right(null));
  }
}
