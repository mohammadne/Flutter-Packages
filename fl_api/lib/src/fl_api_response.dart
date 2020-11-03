import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fl_api/src/fl_api_option.dart';

part 'fl_api_response.freezed.dart';

@freezed
abstract class FlApiResponse<T> with _$FlApiResponse<T> {
  const factory FlApiResponse({
    /// Response body
    T data,

    /// Response headers
    Map<String, List<String>> headers,

    /// Corresponding request info
    FlApiOption request,

    /// Http status code.
    int statusCode,

    /// Returns the reason phrase associated with the status code.
    /// The reason phrase must be set before the body is written
    /// to. Setting the reason phrase after writing to the body.
    String statusMessage,

    /// Custom field that you can retrieve it later in `then`.
    Map<String, dynamic> extra,

    /// Whether this response is a redirect.
    bool isRedirect,
  }) = _FlApiResponse<T>;
}

extension DioResponse<T> on Response<T> {
  FlApiResponse<T> get toFlApi => FlApiResponse(
        data: this.data,
        headers: this.headers.map,
        extra: this.extra,
        isRedirect: this.isRedirect,
        request: FlApiOption.fromDio(this.request),
        statusCode: this.statusCode,
        statusMessage: this.statusMessage,
      );
}
