// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fl_api_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FlApiFailureTearOff {
  const _$FlApiFailureTearOff();

// ignore: unused_element
  _Exception exception(FlApiException exception) {
    return _Exception(
      exception,
    );
  }

// ignore: unused_element
  _Response response(FlApiResponse<dynamic> response) {
    return _Response(
      response,
    );
  }

// ignore: unused_element
  _Timeout timeout() {
    return const _Timeout();
  }

// ignore: unused_element
  _Cancel cancel() {
    return const _Cancel();
  }
}

/// @nodoc
// ignore: unused_element
const $FlApiFailure = _$FlApiFailureTearOff();

/// @nodoc
mixin _$FlApiFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exception(FlApiException exception),
    @required Result response(FlApiResponse<dynamic> response),
    @required Result timeout(),
    @required Result cancel(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exception(FlApiException exception),
    Result response(FlApiResponse<dynamic> response),
    Result timeout(),
    Result cancel(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exception(_Exception value),
    @required Result response(_Response value),
    @required Result timeout(_Timeout value),
    @required Result cancel(_Cancel value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exception(_Exception value),
    Result response(_Response value),
    Result timeout(_Timeout value),
    Result cancel(_Cancel value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FlApiFailureCopyWith<$Res> {
  factory $FlApiFailureCopyWith(
          FlApiFailure value, $Res Function(FlApiFailure) then) =
      _$FlApiFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FlApiFailureCopyWithImpl<$Res> implements $FlApiFailureCopyWith<$Res> {
  _$FlApiFailureCopyWithImpl(this._value, this._then);

  final FlApiFailure _value;
  // ignore: unused_field
  final $Res Function(FlApiFailure) _then;
}

/// @nodoc
abstract class _$ExceptionCopyWith<$Res> {
  factory _$ExceptionCopyWith(
          _Exception value, $Res Function(_Exception) then) =
      __$ExceptionCopyWithImpl<$Res>;
  $Res call({FlApiException exception});

  $FlApiExceptionCopyWith<$Res> get exception;
}

/// @nodoc
class __$ExceptionCopyWithImpl<$Res> extends _$FlApiFailureCopyWithImpl<$Res>
    implements _$ExceptionCopyWith<$Res> {
  __$ExceptionCopyWithImpl(_Exception _value, $Res Function(_Exception) _then)
      : super(_value, (v) => _then(v as _Exception));

  @override
  _Exception get _value => super._value as _Exception;

  @override
  $Res call({
    Object exception = freezed,
  }) {
    return _then(_Exception(
      exception == freezed ? _value.exception : exception as FlApiException,
    ));
  }

  @override
  $FlApiExceptionCopyWith<$Res> get exception {
    if (_value.exception == null) {
      return null;
    }
    return $FlApiExceptionCopyWith<$Res>(_value.exception, (value) {
      return _then(_value.copyWith(exception: value));
    });
  }
}

/// @nodoc
class _$_Exception implements _Exception {
  const _$_Exception(this.exception) : assert(exception != null);

  @override
  final FlApiException exception;

  @override
  String toString() {
    return 'FlApiFailure.exception(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Exception &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @override
  _$ExceptionCopyWith<_Exception> get copyWith =>
      __$ExceptionCopyWithImpl<_Exception>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exception(FlApiException exception),
    @required Result response(FlApiResponse<dynamic> response),
    @required Result timeout(),
    @required Result cancel(),
  }) {
    assert(exception != null);
    assert(response != null);
    assert(timeout != null);
    assert(cancel != null);
    return exception(this.exception);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exception(FlApiException exception),
    Result response(FlApiResponse<dynamic> response),
    Result timeout(),
    Result cancel(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exception != null) {
      return exception(this.exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exception(_Exception value),
    @required Result response(_Response value),
    @required Result timeout(_Timeout value),
    @required Result cancel(_Cancel value),
  }) {
    assert(exception != null);
    assert(response != null);
    assert(timeout != null);
    assert(cancel != null);
    return exception(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exception(_Exception value),
    Result response(_Response value),
    Result timeout(_Timeout value),
    Result cancel(_Cancel value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class _Exception implements FlApiFailure {
  const factory _Exception(FlApiException exception) = _$_Exception;

  FlApiException get exception;
  _$ExceptionCopyWith<_Exception> get copyWith;
}

/// @nodoc
abstract class _$ResponseCopyWith<$Res> {
  factory _$ResponseCopyWith(_Response value, $Res Function(_Response) then) =
      __$ResponseCopyWithImpl<$Res>;
  $Res call({FlApiResponse<dynamic> response});

  $FlApiResponseCopyWith<dynamic, $Res> get response;
}

/// @nodoc
class __$ResponseCopyWithImpl<$Res> extends _$FlApiFailureCopyWithImpl<$Res>
    implements _$ResponseCopyWith<$Res> {
  __$ResponseCopyWithImpl(_Response _value, $Res Function(_Response) _then)
      : super(_value, (v) => _then(v as _Response));

  @override
  _Response get _value => super._value as _Response;

  @override
  $Res call({
    Object response = freezed,
  }) {
    return _then(_Response(
      response == freezed
          ? _value.response
          : response as FlApiResponse<dynamic>,
    ));
  }

  @override
  $FlApiResponseCopyWith<dynamic, $Res> get response {
    if (_value.response == null) {
      return null;
    }
    return $FlApiResponseCopyWith<dynamic, $Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc
class _$_Response implements _Response {
  const _$_Response(this.response) : assert(response != null);

  @override
  final FlApiResponse<dynamic> response;

  @override
  String toString() {
    return 'FlApiFailure.response(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Response &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @override
  _$ResponseCopyWith<_Response> get copyWith =>
      __$ResponseCopyWithImpl<_Response>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exception(FlApiException exception),
    @required Result response(FlApiResponse<dynamic> response),
    @required Result timeout(),
    @required Result cancel(),
  }) {
    assert(exception != null);
    assert(response != null);
    assert(timeout != null);
    assert(cancel != null);
    return response(this.response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exception(FlApiException exception),
    Result response(FlApiResponse<dynamic> response),
    Result timeout(),
    Result cancel(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (response != null) {
      return response(this.response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exception(_Exception value),
    @required Result response(_Response value),
    @required Result timeout(_Timeout value),
    @required Result cancel(_Cancel value),
  }) {
    assert(exception != null);
    assert(response != null);
    assert(timeout != null);
    assert(cancel != null);
    return response(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exception(_Exception value),
    Result response(_Response value),
    Result timeout(_Timeout value),
    Result cancel(_Cancel value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (response != null) {
      return response(this);
    }
    return orElse();
  }
}

abstract class _Response implements FlApiFailure {
  const factory _Response(FlApiResponse<dynamic> response) = _$_Response;

  FlApiResponse<dynamic> get response;
  _$ResponseCopyWith<_Response> get copyWith;
}

/// @nodoc
abstract class _$TimeoutCopyWith<$Res> {
  factory _$TimeoutCopyWith(_Timeout value, $Res Function(_Timeout) then) =
      __$TimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$TimeoutCopyWithImpl<$Res> extends _$FlApiFailureCopyWithImpl<$Res>
    implements _$TimeoutCopyWith<$Res> {
  __$TimeoutCopyWithImpl(_Timeout _value, $Res Function(_Timeout) _then)
      : super(_value, (v) => _then(v as _Timeout));

  @override
  _Timeout get _value => super._value as _Timeout;
}

/// @nodoc
class _$_Timeout implements _Timeout {
  const _$_Timeout();

  @override
  String toString() {
    return 'FlApiFailure.timeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Timeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exception(FlApiException exception),
    @required Result response(FlApiResponse<dynamic> response),
    @required Result timeout(),
    @required Result cancel(),
  }) {
    assert(exception != null);
    assert(response != null);
    assert(timeout != null);
    assert(cancel != null);
    return timeout();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exception(FlApiException exception),
    Result response(FlApiResponse<dynamic> response),
    Result timeout(),
    Result cancel(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timeout != null) {
      return timeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exception(_Exception value),
    @required Result response(_Response value),
    @required Result timeout(_Timeout value),
    @required Result cancel(_Cancel value),
  }) {
    assert(exception != null);
    assert(response != null);
    assert(timeout != null);
    assert(cancel != null);
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exception(_Exception value),
    Result response(_Response value),
    Result timeout(_Timeout value),
    Result cancel(_Cancel value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _Timeout implements FlApiFailure {
  const factory _Timeout() = _$_Timeout;
}

/// @nodoc
abstract class _$CancelCopyWith<$Res> {
  factory _$CancelCopyWith(_Cancel value, $Res Function(_Cancel) then) =
      __$CancelCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelCopyWithImpl<$Res> extends _$FlApiFailureCopyWithImpl<$Res>
    implements _$CancelCopyWith<$Res> {
  __$CancelCopyWithImpl(_Cancel _value, $Res Function(_Cancel) _then)
      : super(_value, (v) => _then(v as _Cancel));

  @override
  _Cancel get _value => super._value as _Cancel;
}

/// @nodoc
class _$_Cancel implements _Cancel {
  const _$_Cancel();

  @override
  String toString() {
    return 'FlApiFailure.cancel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Cancel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exception(FlApiException exception),
    @required Result response(FlApiResponse<dynamic> response),
    @required Result timeout(),
    @required Result cancel(),
  }) {
    assert(exception != null);
    assert(response != null);
    assert(timeout != null);
    assert(cancel != null);
    return cancel();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exception(FlApiException exception),
    Result response(FlApiResponse<dynamic> response),
    Result timeout(),
    Result cancel(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancel != null) {
      return cancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exception(_Exception value),
    @required Result response(_Response value),
    @required Result timeout(_Timeout value),
    @required Result cancel(_Cancel value),
  }) {
    assert(exception != null);
    assert(response != null);
    assert(timeout != null);
    assert(cancel != null);
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exception(_Exception value),
    Result response(_Response value),
    Result timeout(_Timeout value),
    Result cancel(_Cancel value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class _Cancel implements FlApiFailure {
  const factory _Cancel() = _$_Cancel;
}

/// @nodoc
class _$FlApiExceptionTearOff {
  const _$FlApiExceptionTearOff();

// ignore: unused_element
  _Socket socket() {
    return const _Socket();
  }

// ignore: unused_element
  _Format format() {
    return const _Format();
  }

// ignore: unused_element
  _RangeError rangeError() {
    return const _RangeError();
  }

// ignore: unused_element
  _UnknownException unknown(dynamic error) {
    return _UnknownException(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FlApiException = _$FlApiExceptionTearOff();

/// @nodoc
mixin _$FlApiException {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result socket(),
    @required Result format(),
    @required Result rangeError(),
    @required Result unknown(dynamic error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result socket(),
    Result format(),
    Result rangeError(),
    Result unknown(dynamic error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result socket(_Socket value),
    @required Result format(_Format value),
    @required Result rangeError(_RangeError value),
    @required Result unknown(_UnknownException value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result socket(_Socket value),
    Result format(_Format value),
    Result rangeError(_RangeError value),
    Result unknown(_UnknownException value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FlApiExceptionCopyWith<$Res> {
  factory $FlApiExceptionCopyWith(
          FlApiException value, $Res Function(FlApiException) then) =
      _$FlApiExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$FlApiExceptionCopyWithImpl<$Res>
    implements $FlApiExceptionCopyWith<$Res> {
  _$FlApiExceptionCopyWithImpl(this._value, this._then);

  final FlApiException _value;
  // ignore: unused_field
  final $Res Function(FlApiException) _then;
}

/// @nodoc
abstract class _$SocketCopyWith<$Res> {
  factory _$SocketCopyWith(_Socket value, $Res Function(_Socket) then) =
      __$SocketCopyWithImpl<$Res>;
}

/// @nodoc
class __$SocketCopyWithImpl<$Res> extends _$FlApiExceptionCopyWithImpl<$Res>
    implements _$SocketCopyWith<$Res> {
  __$SocketCopyWithImpl(_Socket _value, $Res Function(_Socket) _then)
      : super(_value, (v) => _then(v as _Socket));

  @override
  _Socket get _value => super._value as _Socket;
}

/// @nodoc
class _$_Socket implements _Socket {
  const _$_Socket();

  @override
  String toString() {
    return 'FlApiException.socket()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Socket);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result socket(),
    @required Result format(),
    @required Result rangeError(),
    @required Result unknown(dynamic error),
  }) {
    assert(socket != null);
    assert(format != null);
    assert(rangeError != null);
    assert(unknown != null);
    return socket();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result socket(),
    Result format(),
    Result rangeError(),
    Result unknown(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (socket != null) {
      return socket();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result socket(_Socket value),
    @required Result format(_Format value),
    @required Result rangeError(_RangeError value),
    @required Result unknown(_UnknownException value),
  }) {
    assert(socket != null);
    assert(format != null);
    assert(rangeError != null);
    assert(unknown != null);
    return socket(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result socket(_Socket value),
    Result format(_Format value),
    Result rangeError(_RangeError value),
    Result unknown(_UnknownException value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (socket != null) {
      return socket(this);
    }
    return orElse();
  }
}

abstract class _Socket implements FlApiException {
  const factory _Socket() = _$_Socket;
}

/// @nodoc
abstract class _$FormatCopyWith<$Res> {
  factory _$FormatCopyWith(_Format value, $Res Function(_Format) then) =
      __$FormatCopyWithImpl<$Res>;
}

/// @nodoc
class __$FormatCopyWithImpl<$Res> extends _$FlApiExceptionCopyWithImpl<$Res>
    implements _$FormatCopyWith<$Res> {
  __$FormatCopyWithImpl(_Format _value, $Res Function(_Format) _then)
      : super(_value, (v) => _then(v as _Format));

  @override
  _Format get _value => super._value as _Format;
}

/// @nodoc
class _$_Format implements _Format {
  const _$_Format();

  @override
  String toString() {
    return 'FlApiException.format()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Format);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result socket(),
    @required Result format(),
    @required Result rangeError(),
    @required Result unknown(dynamic error),
  }) {
    assert(socket != null);
    assert(format != null);
    assert(rangeError != null);
    assert(unknown != null);
    return format();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result socket(),
    Result format(),
    Result rangeError(),
    Result unknown(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (format != null) {
      return format();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result socket(_Socket value),
    @required Result format(_Format value),
    @required Result rangeError(_RangeError value),
    @required Result unknown(_UnknownException value),
  }) {
    assert(socket != null);
    assert(format != null);
    assert(rangeError != null);
    assert(unknown != null);
    return format(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result socket(_Socket value),
    Result format(_Format value),
    Result rangeError(_RangeError value),
    Result unknown(_UnknownException value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (format != null) {
      return format(this);
    }
    return orElse();
  }
}

abstract class _Format implements FlApiException {
  const factory _Format() = _$_Format;
}

/// @nodoc
abstract class _$RangeErrorCopyWith<$Res> {
  factory _$RangeErrorCopyWith(
          _RangeError value, $Res Function(_RangeError) then) =
      __$RangeErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$RangeErrorCopyWithImpl<$Res> extends _$FlApiExceptionCopyWithImpl<$Res>
    implements _$RangeErrorCopyWith<$Res> {
  __$RangeErrorCopyWithImpl(
      _RangeError _value, $Res Function(_RangeError) _then)
      : super(_value, (v) => _then(v as _RangeError));

  @override
  _RangeError get _value => super._value as _RangeError;
}

/// @nodoc
class _$_RangeError implements _RangeError {
  const _$_RangeError();

  @override
  String toString() {
    return 'FlApiException.rangeError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RangeError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result socket(),
    @required Result format(),
    @required Result rangeError(),
    @required Result unknown(dynamic error),
  }) {
    assert(socket != null);
    assert(format != null);
    assert(rangeError != null);
    assert(unknown != null);
    return rangeError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result socket(),
    Result format(),
    Result rangeError(),
    Result unknown(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rangeError != null) {
      return rangeError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result socket(_Socket value),
    @required Result format(_Format value),
    @required Result rangeError(_RangeError value),
    @required Result unknown(_UnknownException value),
  }) {
    assert(socket != null);
    assert(format != null);
    assert(rangeError != null);
    assert(unknown != null);
    return rangeError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result socket(_Socket value),
    Result format(_Format value),
    Result rangeError(_RangeError value),
    Result unknown(_UnknownException value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rangeError != null) {
      return rangeError(this);
    }
    return orElse();
  }
}

abstract class _RangeError implements FlApiException {
  const factory _RangeError() = _$_RangeError;
}

/// @nodoc
abstract class _$UnknownExceptionCopyWith<$Res> {
  factory _$UnknownExceptionCopyWith(
          _UnknownException value, $Res Function(_UnknownException) then) =
      __$UnknownExceptionCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class __$UnknownExceptionCopyWithImpl<$Res>
    extends _$FlApiExceptionCopyWithImpl<$Res>
    implements _$UnknownExceptionCopyWith<$Res> {
  __$UnknownExceptionCopyWithImpl(
      _UnknownException _value, $Res Function(_UnknownException) _then)
      : super(_value, (v) => _then(v as _UnknownException));

  @override
  _UnknownException get _value => super._value as _UnknownException;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_UnknownException(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$_UnknownException implements _UnknownException {
  const _$_UnknownException(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'FlApiException.unknown(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnknownException &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  _$UnknownExceptionCopyWith<_UnknownException> get copyWith =>
      __$UnknownExceptionCopyWithImpl<_UnknownException>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result socket(),
    @required Result format(),
    @required Result rangeError(),
    @required Result unknown(dynamic error),
  }) {
    assert(socket != null);
    assert(format != null);
    assert(rangeError != null);
    assert(unknown != null);
    return unknown(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result socket(),
    Result format(),
    Result rangeError(),
    Result unknown(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result socket(_Socket value),
    @required Result format(_Format value),
    @required Result rangeError(_RangeError value),
    @required Result unknown(_UnknownException value),
  }) {
    assert(socket != null);
    assert(format != null);
    assert(rangeError != null);
    assert(unknown != null);
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result socket(_Socket value),
    Result format(_Format value),
    Result rangeError(_RangeError value),
    Result unknown(_UnknownException value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UnknownException implements FlApiException {
  const factory _UnknownException(dynamic error) = _$_UnknownException;

  dynamic get error;
  _$UnknownExceptionCopyWith<_UnknownException> get copyWith;
}
