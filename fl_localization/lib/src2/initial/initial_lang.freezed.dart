// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'initial_lang.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$InitialLangTearOff {
  const _$InitialLangTearOff();

// ignore: unused_element
  _System system() {
    return const _System();
  }

// ignore: unused_element
  _PreferedLocale preferedLocale(String locale) {
    return _PreferedLocale(
      locale,
    );
  }
}

// ignore: unused_element
const $InitialLang = _$InitialLangTearOff();

mixin _$InitialLang {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result system(),
    @required Result preferedLocale(String locale),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result system(),
    Result preferedLocale(String locale),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result system(_System value),
    @required Result preferedLocale(_PreferedLocale value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result system(_System value),
    Result preferedLocale(_PreferedLocale value),
    @required Result orElse(),
  });
}

abstract class $InitialLangCopyWith<$Res> {
  factory $InitialLangCopyWith(
          InitialLang value, $Res Function(InitialLang) then) =
      _$InitialLangCopyWithImpl<$Res>;
}

class _$InitialLangCopyWithImpl<$Res> implements $InitialLangCopyWith<$Res> {
  _$InitialLangCopyWithImpl(this._value, this._then);

  final InitialLang _value;
  // ignore: unused_field
  final $Res Function(InitialLang) _then;
}

abstract class _$SystemCopyWith<$Res> {
  factory _$SystemCopyWith(_System value, $Res Function(_System) then) =
      __$SystemCopyWithImpl<$Res>;
}

class __$SystemCopyWithImpl<$Res> extends _$InitialLangCopyWithImpl<$Res>
    implements _$SystemCopyWith<$Res> {
  __$SystemCopyWithImpl(_System _value, $Res Function(_System) _then)
      : super(_value, (v) => _then(v as _System));

  @override
  _System get _value => super._value as _System;
}

class _$_System implements _System {
  const _$_System();

  @override
  String toString() {
    return 'InitialLang.system()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _System);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result system(),
    @required Result preferedLocale(String locale),
  }) {
    assert(system != null);
    assert(preferedLocale != null);
    return system();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result system(),
    Result preferedLocale(String locale),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (system != null) {
      return system();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result system(_System value),
    @required Result preferedLocale(_PreferedLocale value),
  }) {
    assert(system != null);
    assert(preferedLocale != null);
    return system(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result system(_System value),
    Result preferedLocale(_PreferedLocale value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (system != null) {
      return system(this);
    }
    return orElse();
  }
}

abstract class _System implements InitialLang {
  const factory _System() = _$_System;
}

abstract class _$PreferedLocaleCopyWith<$Res> {
  factory _$PreferedLocaleCopyWith(
          _PreferedLocale value, $Res Function(_PreferedLocale) then) =
      __$PreferedLocaleCopyWithImpl<$Res>;
  $Res call({String locale});
}

class __$PreferedLocaleCopyWithImpl<$Res>
    extends _$InitialLangCopyWithImpl<$Res>
    implements _$PreferedLocaleCopyWith<$Res> {
  __$PreferedLocaleCopyWithImpl(
      _PreferedLocale _value, $Res Function(_PreferedLocale) _then)
      : super(_value, (v) => _then(v as _PreferedLocale));

  @override
  _PreferedLocale get _value => super._value as _PreferedLocale;

  @override
  $Res call({
    Object locale = freezed,
  }) {
    return _then(_PreferedLocale(
      locale == freezed ? _value.locale : locale as String,
    ));
  }
}

class _$_PreferedLocale implements _PreferedLocale {
  const _$_PreferedLocale(this.locale) : assert(locale != null);

  @override
  final String locale;

  @override
  String toString() {
    return 'InitialLang.preferedLocale(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PreferedLocale &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @override
  _$PreferedLocaleCopyWith<_PreferedLocale> get copyWith =>
      __$PreferedLocaleCopyWithImpl<_PreferedLocale>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result system(),
    @required Result preferedLocale(String locale),
  }) {
    assert(system != null);
    assert(preferedLocale != null);
    return preferedLocale(locale);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result system(),
    Result preferedLocale(String locale),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (preferedLocale != null) {
      return preferedLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result system(_System value),
    @required Result preferedLocale(_PreferedLocale value),
  }) {
    assert(system != null);
    assert(preferedLocale != null);
    return preferedLocale(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result system(_System value),
    Result preferedLocale(_PreferedLocale value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (preferedLocale != null) {
      return preferedLocale(this);
    }
    return orElse();
  }
}

abstract class _PreferedLocale implements InitialLang {
  const factory _PreferedLocale(String locale) = _$_PreferedLocale;

  String get locale;
  _$PreferedLocaleCopyWith<_PreferedLocale> get copyWith;
}
