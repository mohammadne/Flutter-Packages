// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'theme_brightness.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ThemeBrightness _$ThemeBrightnessFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'light':
      return Light.fromJson(json);
    case 'dark':
      return Dark.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$ThemeBrightnessTearOff {
  const _$ThemeBrightnessTearOff();

// ignore: unused_element
  Light light() {
    return const Light();
  }

// ignore: unused_element
  Dark dark() {
    return const Dark();
  }
}

// ignore: unused_element
const $ThemeBrightness = _$ThemeBrightnessTearOff();

mixin _$ThemeBrightness {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result light(),
    @required Result dark(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result light(),
    Result dark(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result light(Light value),
    @required Result dark(Dark value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result light(Light value),
    Result dark(Dark value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

abstract class $ThemeBrightnessCopyWith<$Res> {
  factory $ThemeBrightnessCopyWith(
          ThemeBrightness value, $Res Function(ThemeBrightness) then) =
      _$ThemeBrightnessCopyWithImpl<$Res>;
}

class _$ThemeBrightnessCopyWithImpl<$Res>
    implements $ThemeBrightnessCopyWith<$Res> {
  _$ThemeBrightnessCopyWithImpl(this._value, this._then);

  final ThemeBrightness _value;
  // ignore: unused_field
  final $Res Function(ThemeBrightness) _then;
}

abstract class $LightCopyWith<$Res> {
  factory $LightCopyWith(Light value, $Res Function(Light) then) =
      _$LightCopyWithImpl<$Res>;
}

class _$LightCopyWithImpl<$Res> extends _$ThemeBrightnessCopyWithImpl<$Res>
    implements $LightCopyWith<$Res> {
  _$LightCopyWithImpl(Light _value, $Res Function(Light) _then)
      : super(_value, (v) => _then(v as Light));

  @override
  Light get _value => super._value as Light;
}

@JsonSerializable()
class _$Light implements Light {
  const _$Light();

  factory _$Light.fromJson(Map<String, dynamic> json) =>
      _$_$LightFromJson(json);

  @override
  String toString() {
    return 'ThemeBrightness.light()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Light);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result light(),
    @required Result dark(),
  }) {
    assert(light != null);
    assert(dark != null);
    return light();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result light(),
    Result dark(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (light != null) {
      return light();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result light(Light value),
    @required Result dark(Dark value),
  }) {
    assert(light != null);
    assert(dark != null);
    return light(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result light(Light value),
    Result dark(Dark value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (light != null) {
      return light(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$LightToJson(this)..['runtimeType'] = 'light';
  }
}

abstract class Light implements ThemeBrightness {
  const factory Light() = _$Light;

  factory Light.fromJson(Map<String, dynamic> json) = _$Light.fromJson;
}

abstract class $DarkCopyWith<$Res> {
  factory $DarkCopyWith(Dark value, $Res Function(Dark) then) =
      _$DarkCopyWithImpl<$Res>;
}

class _$DarkCopyWithImpl<$Res> extends _$ThemeBrightnessCopyWithImpl<$Res>
    implements $DarkCopyWith<$Res> {
  _$DarkCopyWithImpl(Dark _value, $Res Function(Dark) _then)
      : super(_value, (v) => _then(v as Dark));

  @override
  Dark get _value => super._value as Dark;
}

@JsonSerializable()
class _$Dark implements Dark {
  const _$Dark();

  factory _$Dark.fromJson(Map<String, dynamic> json) => _$_$DarkFromJson(json);

  @override
  String toString() {
    return 'ThemeBrightness.dark()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Dark);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result light(),
    @required Result dark(),
  }) {
    assert(light != null);
    assert(dark != null);
    return dark();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result light(),
    Result dark(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dark != null) {
      return dark();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result light(Light value),
    @required Result dark(Dark value),
  }) {
    assert(light != null);
    assert(dark != null);
    return dark(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result light(Light value),
    Result dark(Dark value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$DarkToJson(this)..['runtimeType'] = 'dark';
  }
}

abstract class Dark implements ThemeBrightness {
  const factory Dark() = _$Dark;

  factory Dark.fromJson(Map<String, dynamic> json) = _$Dark.fromJson;
}
