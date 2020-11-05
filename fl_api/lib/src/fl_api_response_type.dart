import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

part 'fl_api_response_type.freezed.dart';

@freezed
abstract class FlApiResponseType with _$FlApiResponseType {
  const factory FlApiResponseType.json() = _Json;
  const factory FlApiResponseType.stream() = _Stream;
  const factory FlApiResponseType.plain() = _Plain;
  const factory FlApiResponseType.bytes() = _Bytes;
}

extension FlApiResponseTypeEx on FlApiResponseType {
  ResponseType get toDio =>
      this?.when(
        json: () => ResponseType.json,
        stream: () => ResponseType.stream,
        plain: () => ResponseType.plain,
        bytes: () => ResponseType.bytes,
      ) ??
      ResponseType.json;
}

extension ResponseTypeEx on ResponseType {
  FlApiResponseType get toFlApi {
    switch (this) {
      case ResponseType.stream:
        return FlApiResponseType.stream();
      case ResponseType.plain:
        return FlApiResponseType.plain();
      case ResponseType.bytes:
        return FlApiResponseType.bytes();
      default:
        return FlApiResponseType.json();
    }
  }
}
