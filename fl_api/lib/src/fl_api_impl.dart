import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'fl_api.dart';
import 'fl_api_option.dart';

class FlApiImpl implements FlApi {
  FlApiImpl({@required String baseUrl, this.interceptors = const []})
      : dio = Dio(BaseOptions(baseUrl: baseUrl))
          ..interceptors.addAll(interceptors);

  final List<Interceptor> interceptors;
  final Dio dio;

  @override
  Future<Either<DioError, Response<T>>> getMethod<T>(
    String endpoint, {
    FlApiOption option,
  }) {
    return dio
        .get<T>(endpoint, options: option.requestOptions)
        .then((response) => right(response))
        .catchError((DioError error) => left(error));
  }

  @override
  Future<Either<DioError, Response<T>>> postMethod<T>(
    String endpoint, {
    @required dynamic body,
    FlApiOption option,
  }) {
    return dio
        .post<T>(endpoint, data: body, options: option.requestOptions)
        .then((response) => right(response))
        .catchError((DioError error) => left(error));
  }

  @override
  Future<Either<DioError, Response<T>>> putMethod<T>(
    String endpoint, {
    @required dynamic body,
    FlApiOption option,
  }) {
    return dio
        .put<T>(endpoint, data: body, options: option.requestOptions)
        .then((response) => right(response))
        .catchError((DioError error) => left(error));
  }
}
