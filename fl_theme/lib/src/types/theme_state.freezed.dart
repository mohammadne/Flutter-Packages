// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'theme_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ThemeStateTearOff {
  const _$ThemeStateTearOff();

// ignore: unused_element
  _ThemeState call(
      {@required ThemeBrightness brightness, @required ThemePalette palette}) {
    return _ThemeState(
      brightness: brightness,
      palette: palette,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ThemeState = _$ThemeStateTearOff();

/// @nodoc
mixin _$ThemeState {
  ThemeBrightness get brightness;
  ThemePalette get palette;

  $ThemeStateCopyWith<ThemeState> get copyWith;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res>;
  $Res call({ThemeBrightness brightness, ThemePalette palette});

  $ThemeBrightnessCopyWith<$Res> get brightness;
  $ThemePaletteCopyWith<$Res> get palette;
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res> implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  final ThemeState _value;
  // ignore: unused_field
  final $Res Function(ThemeState) _then;

  @override
  $Res call({
    Object brightness = freezed,
    Object palette = freezed,
  }) {
    return _then(_value.copyWith(
      brightness: brightness == freezed
          ? _value.brightness
          : brightness as ThemeBrightness,
      palette: palette == freezed ? _value.palette : palette as ThemePalette,
    ));
  }

  @override
  $ThemeBrightnessCopyWith<$Res> get brightness {
    if (_value.brightness == null) {
      return null;
    }
    return $ThemeBrightnessCopyWith<$Res>(_value.brightness, (value) {
      return _then(_value.copyWith(brightness: value));
    });
  }

  @override
  $ThemePaletteCopyWith<$Res> get palette {
    if (_value.palette == null) {
      return null;
    }
    return $ThemePaletteCopyWith<$Res>(_value.palette, (value) {
      return _then(_value.copyWith(palette: value));
    });
  }
}

/// @nodoc
abstract class _$ThemeStateCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$ThemeStateCopyWith(
          _ThemeState value, $Res Function(_ThemeState) then) =
      __$ThemeStateCopyWithImpl<$Res>;
  @override
  $Res call({ThemeBrightness brightness, ThemePalette palette});

  @override
  $ThemeBrightnessCopyWith<$Res> get brightness;
  @override
  $ThemePaletteCopyWith<$Res> get palette;
}

/// @nodoc
class __$ThemeStateCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$ThemeStateCopyWith<$Res> {
  __$ThemeStateCopyWithImpl(
      _ThemeState _value, $Res Function(_ThemeState) _then)
      : super(_value, (v) => _then(v as _ThemeState));

  @override
  _ThemeState get _value => super._value as _ThemeState;

  @override
  $Res call({
    Object brightness = freezed,
    Object palette = freezed,
  }) {
    return _then(_ThemeState(
      brightness: brightness == freezed
          ? _value.brightness
          : brightness as ThemeBrightness,
      palette: palette == freezed ? _value.palette : palette as ThemePalette,
    ));
  }
}

/// @nodoc
class _$_ThemeState implements _ThemeState {
  const _$_ThemeState({@required this.brightness, @required this.palette})
      : assert(brightness != null),
        assert(palette != null);

  @override
  final ThemeBrightness brightness;
  @override
  final ThemePalette palette;

  @override
  String toString() {
    return 'ThemeState(brightness: $brightness, palette: $palette)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThemeState &&
            (identical(other.brightness, brightness) ||
                const DeepCollectionEquality()
                    .equals(other.brightness, brightness)) &&
            (identical(other.palette, palette) ||
                const DeepCollectionEquality().equals(other.palette, palette)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(brightness) ^
      const DeepCollectionEquality().hash(palette);

  @override
  _$ThemeStateCopyWith<_ThemeState> get copyWith =>
      __$ThemeStateCopyWithImpl<_ThemeState>(this, _$identity);
}

abstract class _ThemeState implements ThemeState {
  const factory _ThemeState(
      {@required ThemeBrightness brightness,
      @required ThemePalette palette}) = _$_ThemeState;

  @override
  ThemeBrightness get brightness;
  @override
  ThemePalette get palette;
  @override
  _$ThemeStateCopyWith<_ThemeState> get copyWith;
}
