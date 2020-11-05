import 'package:fl_api/src/fl_api_failure.dart';
import 'package:fl_api/src/fl_api_response.dart';
import 'package:flutter/foundation.dart';
import 'package:dartz/dartz.dart';

import 'fl_api_option.dart';

abstract class FlApi {
  /// perform a http get request
  Future<Either<FlApiFailure, FlApiResponse<T>>> getMethod<T>(
    String endpoint, {
    FlApiOption option,
  });

  /// perform a http post request
  Future<Either<FlApiFailure, FlApiResponse<T>>> postMethod<T>(
    String endpoint, {
    @required dynamic body,
    FlApiOption option,
  });

  /// perform a http put request
  Future<Either<FlApiFailure, FlApiResponse<T>>> putMethod<T>(
    String endpoint, {
    @required dynamic body,
    FlApiOption option,
  });

  /// perform a http patch request
  Future<Either<FlApiFailure, FlApiResponse<T>>> patchMethod<T>(
    String endpoint, {
    @required dynamic body,
    FlApiOption option,
  });
}
