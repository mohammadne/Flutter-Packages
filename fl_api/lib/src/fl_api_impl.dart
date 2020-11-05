import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'fl_api.dart';
import 'fl_api_failure.dart';
import 'fl_api_option.dart';
import 'fl_api_response.dart';

class FlApiImpl implements FlApi {
  FlApiImpl([this.interceptors])
      : dio = Dio()..interceptors.addAll(interceptors ?? []);

  final List<Interceptor> interceptors;
  final Dio dio;

  @override
  Future<Either<FlApiFailure, FlApiResponse<T>>> getMethod<T>(
    String endpoint, {
    FlApiOption option = const FlApiOption(),
  }) {
    return dio.get<T>(endpoint, options: option.requestOptions).toRes.toFlApi;
  }

  @override
  Future<Either<FlApiFailure, FlApiResponse<T>>> postMethod<T>(
    String endpoint, {
    @required dynamic body,
    FlApiOption option = const FlApiOption(),
  }) {
    return dio
        .post<T>(endpoint, data: body, options: option.requestOptions)
        .toRes
        .toFlApi;
  }

  @override
  Future<Either<FlApiFailure, FlApiResponse<T>>> putMethod<T>(
    String endpoint, {
    @required dynamic body,
    FlApiOption option = const FlApiOption(),
  }) {
    return dio
        .put<T>(endpoint, data: body, options: option.requestOptions)
        .toRes
        .toFlApi;
  }

  @override
  Future<Either<FlApiFailure, FlApiResponse<T>>> patchMethod<T>(
    String endpoint, {
    @required dynamic body,
    FlApiOption option = const FlApiOption(),
  }) {
    return dio
        .patch<T>(endpoint, data: body, options: option.requestOptions)
        .toRes
        .toFlApi;
  }
}

extension _HttpMethod<T> on Future<Response<T>> {
  Future<Either<DioError, Response<T>>> get toRes => Task(() => this)
      .attempt()
      .map((either) => either.leftMap((obj) => obj as DioError))
      .run();
}

extension _DioRes<T> on Future<Either<DioError, Response<T>>> {
  Future<Either<FlApiFailure, FlApiResponse<T>>> get toFlApi => this.then(
        (response) => response.fold(
          (dioError) => left(dioError.toFlApi),
          (response) => right(response.toFlApi),
        ),
      );
}

extension DioErrorEx on DioError {
  FlApiFailure get toFlApi {
    /// DioErrorType.RESPONSE
    if (this.type == DioErrorType.RESPONSE)
      return FlApiFailure.response(this.response.toFlApi);

    /// DioErrorType.DEFAULT
    else if (this.type == DioErrorType.DEFAULT) {
      if (this.error is SocketException)
        return FlApiFailure.exception(FlApiException.socket());
      else if (this.error is FormatException)
        return FlApiFailure.exception(FlApiException.format());
      else if (this.error is RangeError)
        return FlApiFailure.exception(FlApiException.rangeError());
      return FlApiFailure.exception(FlApiException.unknown(this.error));
    }

    /// DioErrorType.CANCEL
    else if (this.type == DioErrorType.CANCEL) return FlApiFailure.cancel();

    ///   CONNECT_TIMEOUT, SEND_TIMEOUT, RECEIVE_TIMEOUT
    return FlApiFailure.timeout();
  }
}
