import 'package:freezed_annotation/freezed_annotation.dart';

import 'fl_api_response.dart';

part 'fl_api_failure.freezed.dart';

@freezed
abstract class FlApiFailure with _$FlApiFailure {
  const factory FlApiFailure.exception(FlApiException exception) = _Exception;
  const factory FlApiFailure.response(FlApiResponse response) = _Response;
  const factory FlApiFailure.timeout() = _Timeout;
  const factory FlApiFailure.cancel() = _Cancel;
}

@freezed
abstract class FlApiException with _$FlApiException {
  const factory FlApiException.socket() = _Socket;
  const factory FlApiException.format() = _Format;
  const factory FlApiException.rangeError() = _RangeError;
  const factory FlApiException.unknown(dynamic error) = _UnknownException;
}
