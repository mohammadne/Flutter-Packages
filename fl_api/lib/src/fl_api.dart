import 'package:flutter/foundation.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'fl_api_option.dart';

abstract class FlApi {
  /// perform a http get request
  Future<Either<DioError, Response<T>>> getMethod<T>(
    String endpoint, {
    FlApiOption option,
  });

  /// perform a http post request
  Future<Either<DioError, Response<T>>> postMethod<T>(
    String endpoint, {
    @required dynamic body,
    FlApiOption option,
  });

  /// perform a http put request
  Future<Either<DioError, Response<T>>> putMethod<T>(
    String endpoint, {
    @required dynamic body,
    FlApiOption option,
  });
}
