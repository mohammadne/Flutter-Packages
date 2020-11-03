import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'fl_api.dart';
import 'fl_api_option.dart';

class FlApiImpl implements FlApi {
  FlApiImpl([this.interceptors])
      : dio = Dio()..interceptors.addAll(interceptors ?? []);

  final List<Interceptor> interceptors;
  final Dio dio;

  @override
  Future<Either<DioError, Response<T>>> getMethod<T>(
    String endpoint, {
    FlApiOption option = const FlApiOption(),
  }) {
    return dio.get<T>(endpoint, options: option.requestOptions).toRes;
  }

  @override
  Future<Either<DioError, Response<T>>> postMethod<T>(
    String endpoint, {
    @required dynamic body,
    FlApiOption option = const FlApiOption(),
  }) {
    return dio
        .post<T>(endpoint, data: body, options: option.requestOptions)
        .toRes;
  }

  @override
  Future<Either<DioError, Response<T>>> putMethod<T>(
    String endpoint, {
    @required dynamic body,
    FlApiOption option = const FlApiOption(),
  }) {
    return dio
        .put<T>(endpoint, data: body, options: option.requestOptions)
        .toRes;
  }

  @override
  Future<Either<DioError, Response<T>>> patchMethod<T>(
    String endpoint, {
    @required dynamic body,
    FlApiOption option = const FlApiOption(),
  }) {
    return dio
        .patch<T>(endpoint, data: body, options: option.requestOptions)
        .toRes;
  }
}

extension _HttpMethod<T> on Future<Response<T>> {
  Future<Either<DioError, Response<T>>> get toRes => Task(() => this)
      .attempt()
      .map((either) => either.leftMap((obj) => obj as DioError))
      .run();
}
