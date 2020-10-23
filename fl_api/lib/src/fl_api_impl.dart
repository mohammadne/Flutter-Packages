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
    return dio
        .get<T>(endpoint, options: option.requestOptions)
        .then((response) => right(response))
        .catchError((DioError error) => left(error));
  }

  @override
  Future<Either<DioError, Response<T>>> postMethod<T>(
    String endpoint, {
    @required dynamic body,
    FlApiOption option = const FlApiOption(),
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
    FlApiOption option = const FlApiOption(),
  }) {
    return dio
        .put<T>(endpoint, data: body, options: option.requestOptions)
        .then((response) => right(response))
        .catchError((DioError error) => left(error));
  }
}
