import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'logger_interceptor.dart';

@lazySingleton
class ApiClient {
  final LoggerInterceptor loggingInterceptor;
  late Dio dio;

  ApiClient(
    Dio dioC, {
    required this.loggingInterceptor,
  }) {
    dio = dioC;
    resetHeader();
  }

  resetHeader() {
    dio
      ..options.connectTimeout = const Duration(milliseconds: 30000)
      ..options.receiveTimeout = const Duration(milliseconds: 30000)
      ..httpClientAdapter
      ..options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // if (HelperFunc.isAuth()) 'Authorization': 'Bearer ${AppVariables.token}'
      };
    dio.interceptors.clear();
    dio.interceptors.add(loggingInterceptor);
  }

  Future<Response> get(
    Uri uri, {
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    data,
  }) async {
    return await dio.getUri(
      uri,
      data: data,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response> post(
    Uri uri, {
    data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    return await dio.postUri(
      uri,
      data: data,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response> put(
    Uri uri, {
    data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    return await dio.putUri(
      uri,
      data: data,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response> delete(
    Uri uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return await dio.deleteUri(
      uri,
      data: data,
      options: options,
      cancelToken: cancelToken,
    );
  }
}
