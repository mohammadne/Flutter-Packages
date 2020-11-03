// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fl_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FlApiResponseTearOff {
  const _$FlApiResponseTearOff();

// ignore: unused_element
  _FlApiResponse<T> call<T>(
      {T data,
      Map<String, List<String>> headers,
      FlApiOption request,
      int statusCode,
      String statusMessage,
      Map<String, dynamic> extra,
      bool isRedirect}) {
    return _FlApiResponse<T>(
      data: data,
      headers: headers,
      request: request,
      statusCode: statusCode,
      statusMessage: statusMessage,
      extra: extra,
      isRedirect: isRedirect,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FlApiResponse = _$FlApiResponseTearOff();

/// @nodoc
mixin _$FlApiResponse<T> {
  /// Response body
  T get data;

  /// Response headers
  Map<String, List<String>> get headers;

  /// Corresponding request info
  FlApiOption get request;

  /// Http status code.
  int get statusCode;

  /// Returns the reason phrase associated with the status code.
  /// The reason phrase must be set before the body is written
  /// to. Setting the reason phrase after writing to the body.
  String get statusMessage;

  /// Custom field that you can retrieve it later in `then`.
  Map<String, dynamic> get extra;

  /// Whether this response is a redirect.
  bool get isRedirect;

  $FlApiResponseCopyWith<T, FlApiResponse<T>> get copyWith;
}

/// @nodoc
abstract class $FlApiResponseCopyWith<T, $Res> {
  factory $FlApiResponseCopyWith(
          FlApiResponse<T> value, $Res Function(FlApiResponse<T>) then) =
      _$FlApiResponseCopyWithImpl<T, $Res>;
  $Res call(
      {T data,
      Map<String, List<String>> headers,
      FlApiOption request,
      int statusCode,
      String statusMessage,
      Map<String, dynamic> extra,
      bool isRedirect});
}

/// @nodoc
class _$FlApiResponseCopyWithImpl<T, $Res>
    implements $FlApiResponseCopyWith<T, $Res> {
  _$FlApiResponseCopyWithImpl(this._value, this._then);

  final FlApiResponse<T> _value;
  // ignore: unused_field
  final $Res Function(FlApiResponse<T>) _then;

  @override
  $Res call({
    Object data = freezed,
    Object headers = freezed,
    Object request = freezed,
    Object statusCode = freezed,
    Object statusMessage = freezed,
    Object extra = freezed,
    Object isRedirect = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as T,
      headers: headers == freezed
          ? _value.headers
          : headers as Map<String, List<String>>,
      request: request == freezed ? _value.request : request as FlApiOption,
      statusCode: statusCode == freezed ? _value.statusCode : statusCode as int,
      statusMessage: statusMessage == freezed
          ? _value.statusMessage
          : statusMessage as String,
      extra: extra == freezed ? _value.extra : extra as Map<String, dynamic>,
      isRedirect:
          isRedirect == freezed ? _value.isRedirect : isRedirect as bool,
    ));
  }
}

/// @nodoc
abstract class _$FlApiResponseCopyWith<T, $Res>
    implements $FlApiResponseCopyWith<T, $Res> {
  factory _$FlApiResponseCopyWith(
          _FlApiResponse<T> value, $Res Function(_FlApiResponse<T>) then) =
      __$FlApiResponseCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {T data,
      Map<String, List<String>> headers,
      FlApiOption request,
      int statusCode,
      String statusMessage,
      Map<String, dynamic> extra,
      bool isRedirect});
}

/// @nodoc
class __$FlApiResponseCopyWithImpl<T, $Res>
    extends _$FlApiResponseCopyWithImpl<T, $Res>
    implements _$FlApiResponseCopyWith<T, $Res> {
  __$FlApiResponseCopyWithImpl(
      _FlApiResponse<T> _value, $Res Function(_FlApiResponse<T>) _then)
      : super(_value, (v) => _then(v as _FlApiResponse<T>));

  @override
  _FlApiResponse<T> get _value => super._value as _FlApiResponse<T>;

  @override
  $Res call({
    Object data = freezed,
    Object headers = freezed,
    Object request = freezed,
    Object statusCode = freezed,
    Object statusMessage = freezed,
    Object extra = freezed,
    Object isRedirect = freezed,
  }) {
    return _then(_FlApiResponse<T>(
      data: data == freezed ? _value.data : data as T,
      headers: headers == freezed
          ? _value.headers
          : headers as Map<String, List<String>>,
      request: request == freezed ? _value.request : request as FlApiOption,
      statusCode: statusCode == freezed ? _value.statusCode : statusCode as int,
      statusMessage: statusMessage == freezed
          ? _value.statusMessage
          : statusMessage as String,
      extra: extra == freezed ? _value.extra : extra as Map<String, dynamic>,
      isRedirect:
          isRedirect == freezed ? _value.isRedirect : isRedirect as bool,
    ));
  }
}

/// @nodoc
class _$_FlApiResponse<T> implements _FlApiResponse<T> {
  const _$_FlApiResponse(
      {this.data,
      this.headers,
      this.request,
      this.statusCode,
      this.statusMessage,
      this.extra,
      this.isRedirect});

  @override

  /// Response body
  final T data;
  @override

  /// Response headers
  final Map<String, List<String>> headers;
  @override

  /// Corresponding request info
  final FlApiOption request;
  @override

  /// Http status code.
  final int statusCode;
  @override

  /// Returns the reason phrase associated with the status code.
  /// The reason phrase must be set before the body is written
  /// to. Setting the reason phrase after writing to the body.
  final String statusMessage;
  @override

  /// Custom field that you can retrieve it later in `then`.
  final Map<String, dynamic> extra;
  @override

  /// Whether this response is a redirect.
  final bool isRedirect;

  @override
  String toString() {
    return 'FlApiResponse<$T>(data: $data, headers: $headers, request: $request, statusCode: $statusCode, statusMessage: $statusMessage, extra: $extra, isRedirect: $isRedirect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FlApiResponse<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.headers, headers) ||
                const DeepCollectionEquality()
                    .equals(other.headers, headers)) &&
            (identical(other.request, request) ||
                const DeepCollectionEquality()
                    .equals(other.request, request)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.statusMessage, statusMessage) ||
                const DeepCollectionEquality()
                    .equals(other.statusMessage, statusMessage)) &&
            (identical(other.extra, extra) ||
                const DeepCollectionEquality().equals(other.extra, extra)) &&
            (identical(other.isRedirect, isRedirect) ||
                const DeepCollectionEquality()
                    .equals(other.isRedirect, isRedirect)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(headers) ^
      const DeepCollectionEquality().hash(request) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(statusMessage) ^
      const DeepCollectionEquality().hash(extra) ^
      const DeepCollectionEquality().hash(isRedirect);

  @override
  _$FlApiResponseCopyWith<T, _FlApiResponse<T>> get copyWith =>
      __$FlApiResponseCopyWithImpl<T, _FlApiResponse<T>>(this, _$identity);
}

abstract class _FlApiResponse<T> implements FlApiResponse<T> {
  const factory _FlApiResponse(
      {T data,
      Map<String, List<String>> headers,
      FlApiOption request,
      int statusCode,
      String statusMessage,
      Map<String, dynamic> extra,
      bool isRedirect}) = _$_FlApiResponse<T>;

  @override

  /// Response body
  T get data;
  @override

  /// Response headers
  Map<String, List<String>> get headers;
  @override

  /// Corresponding request info
  FlApiOption get request;
  @override

  /// Http status code.
  int get statusCode;
  @override

  /// Returns the reason phrase associated with the status code.
  /// The reason phrase must be set before the body is written
  /// to. Setting the reason phrase after writing to the body.
  String get statusMessage;
  @override

  /// Custom field that you can retrieve it later in `then`.
  Map<String, dynamic> get extra;
  @override

  /// Whether this response is a redirect.
  bool get isRedirect;
  @override
  _$FlApiResponseCopyWith<T, _FlApiResponse<T>> get copyWith;
}
