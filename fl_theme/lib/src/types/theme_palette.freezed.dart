// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'theme_palette.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ThemePalette _$ThemePaletteFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'orange':
      return Orange.fromJson(json);
    case 'blue':
      return Blue.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$ThemePaletteTearOff {
  const _$ThemePaletteTearOff();

// ignore: unused_element
  Orange orange() {
    return const Orange();
  }

// ignore: unused_element
  Blue blue() {
    return const Blue();
  }
}

// ignore: unused_element
const $ThemePalette = _$ThemePaletteTearOff();

mixin _$ThemePalette {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result orange(),
    @required Result blue(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result orange(),
    Result blue(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result orange(Orange value),
    @required Result blue(Blue value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result orange(Orange value),
    Result blue(Blue value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

abstract class $ThemePaletteCopyWith<$Res> {
  factory $ThemePaletteCopyWith(
          ThemePalette value, $Res Function(ThemePalette) then) =
      _$ThemePaletteCopyWithImpl<$Res>;
}

class _$ThemePaletteCopyWithImpl<$Res> implements $ThemePaletteCopyWith<$Res> {
  _$ThemePaletteCopyWithImpl(this._value, this._then);

  final ThemePalette _value;
  // ignore: unused_field
  final $Res Function(ThemePalette) _then;
}

abstract class $OrangeCopyWith<$Res> {
  factory $OrangeCopyWith(Orange value, $Res Function(Orange) then) =
      _$OrangeCopyWithImpl<$Res>;
}

class _$OrangeCopyWithImpl<$Res> extends _$ThemePaletteCopyWithImpl<$Res>
    implements $OrangeCopyWith<$Res> {
  _$OrangeCopyWithImpl(Orange _value, $Res Function(Orange) _then)
      : super(_value, (v) => _then(v as Orange));

  @override
  Orange get _value => super._value as Orange;
}

@JsonSerializable()
class _$Orange implements Orange {
  const _$Orange();

  factory _$Orange.fromJson(Map<String, dynamic> json) =>
      _$_$OrangeFromJson(json);

  @override
  String toString() {
    return 'ThemePalette.orange()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Orange);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result orange(),
    @required Result blue(),
  }) {
    assert(orange != null);
    assert(blue != null);
    return orange();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result orange(),
    Result blue(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (orange != null) {
      return orange();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result orange(Orange value),
    @required Result blue(Blue value),
  }) {
    assert(orange != null);
    assert(blue != null);
    return orange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result orange(Orange value),
    Result blue(Blue value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (orange != null) {
      return orange(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$OrangeToJson(this)..['runtimeType'] = 'orange';
  }
}

abstract class Orange implements ThemePalette {
  const factory Orange() = _$Orange;

  factory Orange.fromJson(Map<String, dynamic> json) = _$Orange.fromJson;
}

abstract class $BlueCopyWith<$Res> {
  factory $BlueCopyWith(Blue value, $Res Function(Blue) then) =
      _$BlueCopyWithImpl<$Res>;
}

class _$BlueCopyWithImpl<$Res> extends _$ThemePaletteCopyWithImpl<$Res>
    implements $BlueCopyWith<$Res> {
  _$BlueCopyWithImpl(Blue _value, $Res Function(Blue) _then)
      : super(_value, (v) => _then(v as Blue));

  @override
  Blue get _value => super._value as Blue;
}

@JsonSerializable()
class _$Blue implements Blue {
  const _$Blue();

  factory _$Blue.fromJson(Map<String, dynamic> json) => _$_$BlueFromJson(json);

  @override
  String toString() {
    return 'ThemePalette.blue()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Blue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result orange(),
    @required Result blue(),
  }) {
    assert(orange != null);
    assert(blue != null);
    return blue();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result orange(),
    Result blue(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blue != null) {
      return blue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result orange(Orange value),
    @required Result blue(Blue value),
  }) {
    assert(orange != null);
    assert(blue != null);
    return blue(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result orange(Orange value),
    Result blue(Blue value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blue != null) {
      return blue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$BlueToJson(this)..['runtimeType'] = 'blue';
  }
}

abstract class Blue implements ThemePalette {
  const factory Blue() = _$Blue;

  factory Blue.fromJson(Map<String, dynamic> json) = _$Blue.fromJson;
}
