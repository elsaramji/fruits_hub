import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'constant/api_constant.dart';
import 'errors/request_error.dart';

@LazySingleton()
class RestApi {
  final Dio _dio;
  RestApi()
    : _dio = Dio(
        BaseOptions(
          baseUrl: ApiConstant.baseUrl,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          responseType: ResponseType.json,
          validateStatus: (status) {
            return status! <= 500;
          },
        ),
      );

  Future<Either<RequestError, Response>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response.statusCode! >= 200 && response.statusCode! < 300
          ? Right(response)
          : Left(RequestError.fromStatusCode(response.statusCode));
    } on DioException catch (e) {
      return Left(RequestError.fromDioException(e));
    } catch (e) {
      return Left(RequestError(message: 'Unknown error'));
    }
  }

  Future<Either<RequestError, Response>> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response.statusCode! >= 200 && response.statusCode! < 300
          ? Right(response)
          : Left(RequestError.fromStatusCode(response.statusCode));
    } on DioException catch (e) {
      return Left(RequestError.fromDioException(e));
    } catch (e) {
      return Left(RequestError(message: 'Unknown error $e'));
    }
  }

  Future<Either<RequestError, Response>> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response.statusCode! >= 200 && response.statusCode! < 300
          ? Right(response)
          : Left(RequestError.fromStatusCode(response.statusCode));
    } on DioException catch (e) {
      return Left(RequestError.fromDioException(e));
    } catch (e) {
      return Left(RequestError(message: 'Unknown error $e'));
    }
  }

  Future<Either<RequestError, Response>> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final Response response = await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response.statusCode! >= 200 && response.statusCode! < 300
          ? Right(response)
          : Left(RequestError.fromStatusCode(response.statusCode));
    } on DioException catch (e) {
      return Left(RequestError.fromDioException(e));
    } catch (e) {
      return Left(RequestError(message: 'Unknown error $e'));
    }
  }
}
