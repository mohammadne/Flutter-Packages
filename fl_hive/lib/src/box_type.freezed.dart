// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'box_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BoxTypeTearOff {
  const _$BoxTypeTearOff();

// ignore: unused_element
  _MultiValue multiValue() {
    return const _MultiValue();
  }

// ignore: unused_element
  _SingleValue singleValue({@JsonKey(defaultValue: 0) int key}) {
    return _SingleValue(
      key: key,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BoxType = _$BoxTypeTearOff();

/// @nodoc
mixin _$BoxType {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result multiValue(),
    @required Result singleValue(@JsonKey(defaultValue: 0) int key),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result multiValue(),
    Result singleValue(@JsonKey(defaultValue: 0) int key),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result multiValue(_MultiValue value),
    @required Result singleValue(_SingleValue value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result multiValue(_MultiValue value),
    Result singleValue(_SingleValue value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $BoxTypeCopyWith<$Res> {
  factory $BoxTypeCopyWith(BoxType value, $Res Function(BoxType) then) =
      _$BoxTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$BoxTypeCopyWithImpl<$Res> implements $BoxTypeCopyWith<$Res> {
  _$BoxTypeCopyWithImpl(this._value, this._then);

  final BoxType _value;
  // ignore: unused_field
  final $Res Function(BoxType) _then;
}

/// @nodoc
abstract class _$MultiValueCopyWith<$Res> {
  factory _$MultiValueCopyWith(
          _MultiValue value, $Res Function(_MultiValue) then) =
      __$MultiValueCopyWithImpl<$Res>;
}

/// @nodoc
class __$MultiValueCopyWithImpl<$Res> extends _$BoxTypeCopyWithImpl<$Res>
    implements _$MultiValueCopyWith<$Res> {
  __$MultiValueCopyWithImpl(
      _MultiValue _value, $Res Function(_MultiValue) _then)
      : super(_value, (v) => _then(v as _MultiValue));

  @override
  _MultiValue get _value => super._value as _MultiValue;
}

/// @nodoc
class _$_MultiValue implements _MultiValue {
  const _$_MultiValue();

  @override
  String toString() {
    return 'BoxType.multiValue()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MultiValue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result multiValue(),
    @required Result singleValue(@JsonKey(defaultValue: 0) int key),
  }) {
    assert(multiValue != null);
    assert(singleValue != null);
    return multiValue();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result multiValue(),
    Result singleValue(@JsonKey(defaultValue: 0) int key),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiValue != null) {
      return multiValue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result multiValue(_MultiValue value),
    @required Result singleValue(_SingleValue value),
  }) {
    assert(multiValue != null);
    assert(singleValue != null);
    return multiValue(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result multiValue(_MultiValue value),
    Result singleValue(_SingleValue value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiValue != null) {
      return multiValue(this);
    }
    return orElse();
  }
}

abstract class _MultiValue implements BoxType {
  const factory _MultiValue() = _$_MultiValue;
}

/// @nodoc
abstract class _$SingleValueCopyWith<$Res> {
  factory _$SingleValueCopyWith(
          _SingleValue value, $Res Function(_SingleValue) then) =
      __$SingleValueCopyWithImpl<$Res>;
  $Res call({@JsonKey(defaultValue: 0) int key});
}

/// @nodoc
class __$SingleValueCopyWithImpl<$Res> extends _$BoxTypeCopyWithImpl<$Res>
    implements _$SingleValueCopyWith<$Res> {
  __$SingleValueCopyWithImpl(
      _SingleValue _value, $Res Function(_SingleValue) _then)
      : super(_value, (v) => _then(v as _SingleValue));

  @override
  _SingleValue get _value => super._value as _SingleValue;

  @override
  $Res call({
    Object key = freezed,
  }) {
    return _then(_SingleValue(
      key: key == freezed ? _value.key : key as int,
    ));
  }
}

/// @nodoc
class _$_SingleValue implements _SingleValue {
  const _$_SingleValue({@JsonKey(defaultValue: 0) this.key});

  @override
  @JsonKey(defaultValue: 0)
  final int key;

  @override
  String toString() {
    return 'BoxType.singleValue(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SingleValue &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(key);

  @override
  _$SingleValueCopyWith<_SingleValue> get copyWith =>
      __$SingleValueCopyWithImpl<_SingleValue>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result multiValue(),
    @required Result singleValue(@JsonKey(defaultValue: 0) int key),
  }) {
    assert(multiValue != null);
    assert(singleValue != null);
    return singleValue(key);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result multiValue(),
    Result singleValue(@JsonKey(defaultValue: 0) int key),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (singleValue != null) {
      return singleValue(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result multiValue(_MultiValue value),
    @required Result singleValue(_SingleValue value),
  }) {
    assert(multiValue != null);
    assert(singleValue != null);
    return singleValue(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result multiValue(_MultiValue value),
    Result singleValue(_SingleValue value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (singleValue != null) {
      return singleValue(this);
    }
    return orElse();
  }
}

abstract class _SingleValue implements BoxType {
  const factory _SingleValue({@JsonKey(defaultValue: 0) int key}) =
      _$_SingleValue;

  @JsonKey(defaultValue: 0)
  int get key;
  _$SingleValueCopyWith<_SingleValue> get copyWith;
}
