// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'lang_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LangEventTearOff {
  const _$LangEventTearOff();

  _LoadTranslations loadTranslations() {
    return const _LoadTranslations();
  }

  _SetLocale setLocale(String locale) {
    return _SetLocale(
      locale,
    );
  }
}

// ignore: unused_element
const $LangEvent = _$LangEventTearOff();

mixin _$LangEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadTranslations(),
    @required Result setLocale(String locale),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadTranslations(),
    Result setLocale(String locale),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadTranslations(_LoadTranslations value),
    @required Result setLocale(_SetLocale value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadTranslations(_LoadTranslations value),
    Result setLocale(_SetLocale value),
    @required Result orElse(),
  });
}

abstract class $LangEventCopyWith<$Res> {
  factory $LangEventCopyWith(LangEvent value, $Res Function(LangEvent) then) =
      _$LangEventCopyWithImpl<$Res>;
}

class _$LangEventCopyWithImpl<$Res> implements $LangEventCopyWith<$Res> {
  _$LangEventCopyWithImpl(this._value, this._then);

  final LangEvent _value;
  // ignore: unused_field
  final $Res Function(LangEvent) _then;
}

abstract class _$LoadTranslationsCopyWith<$Res> {
  factory _$LoadTranslationsCopyWith(
          _LoadTranslations value, $Res Function(_LoadTranslations) then) =
      __$LoadTranslationsCopyWithImpl<$Res>;
}

class __$LoadTranslationsCopyWithImpl<$Res>
    extends _$LangEventCopyWithImpl<$Res>
    implements _$LoadTranslationsCopyWith<$Res> {
  __$LoadTranslationsCopyWithImpl(
      _LoadTranslations _value, $Res Function(_LoadTranslations) _then)
      : super(_value, (v) => _then(v as _LoadTranslations));

  @override
  _LoadTranslations get _value => super._value as _LoadTranslations;
}

class _$_LoadTranslations implements _LoadTranslations {
  const _$_LoadTranslations();

  @override
  String toString() {
    return 'LangEvent.loadTranslations()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadTranslations);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadTranslations(),
    @required Result setLocale(String locale),
  }) {
    assert(loadTranslations != null);
    assert(setLocale != null);
    return loadTranslations();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadTranslations(),
    Result setLocale(String locale),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadTranslations != null) {
      return loadTranslations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadTranslations(_LoadTranslations value),
    @required Result setLocale(_SetLocale value),
  }) {
    assert(loadTranslations != null);
    assert(setLocale != null);
    return loadTranslations(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadTranslations(_LoadTranslations value),
    Result setLocale(_SetLocale value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadTranslations != null) {
      return loadTranslations(this);
    }
    return orElse();
  }
}

abstract class _LoadTranslations implements LangEvent {
  const factory _LoadTranslations() = _$_LoadTranslations;
}

abstract class _$SetLocaleCopyWith<$Res> {
  factory _$SetLocaleCopyWith(
          _SetLocale value, $Res Function(_SetLocale) then) =
      __$SetLocaleCopyWithImpl<$Res>;
  $Res call({String locale});
}

class __$SetLocaleCopyWithImpl<$Res> extends _$LangEventCopyWithImpl<$Res>
    implements _$SetLocaleCopyWith<$Res> {
  __$SetLocaleCopyWithImpl(_SetLocale _value, $Res Function(_SetLocale) _then)
      : super(_value, (v) => _then(v as _SetLocale));

  @override
  _SetLocale get _value => super._value as _SetLocale;

  @override
  $Res call({
    Object locale = freezed,
  }) {
    return _then(_SetLocale(
      locale == freezed ? _value.locale : locale as String,
    ));
  }
}

class _$_SetLocale implements _SetLocale {
  const _$_SetLocale(this.locale) : assert(locale != null);

  @override
  final String locale;

  @override
  String toString() {
    return 'LangEvent.setLocale(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetLocale &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @override
  _$SetLocaleCopyWith<_SetLocale> get copyWith =>
      __$SetLocaleCopyWithImpl<_SetLocale>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadTranslations(),
    @required Result setLocale(String locale),
  }) {
    assert(loadTranslations != null);
    assert(setLocale != null);
    return setLocale(locale);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadTranslations(),
    Result setLocale(String locale),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setLocale != null) {
      return setLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadTranslations(_LoadTranslations value),
    @required Result setLocale(_SetLocale value),
  }) {
    assert(loadTranslations != null);
    assert(setLocale != null);
    return setLocale(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadTranslations(_LoadTranslations value),
    Result setLocale(_SetLocale value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setLocale != null) {
      return setLocale(this);
    }
    return orElse();
  }
}

abstract class _SetLocale implements LangEvent {
  const factory _SetLocale(String locale) = _$_SetLocale;

  String get locale;
  _$SetLocaleCopyWith<_SetLocale> get copyWith;
}

class _$LangStateTearOff {
  const _$LangStateTearOff();

  _LangState call(String locale, bool isLoaded) {
    return _LangState(
      locale,
      isLoaded,
    );
  }
}

// ignore: unused_element
const $LangState = _$LangStateTearOff();

mixin _$LangState {
  String get locale;
  bool get isLoaded;

  $LangStateCopyWith<LangState> get copyWith;
}

abstract class $LangStateCopyWith<$Res> {
  factory $LangStateCopyWith(LangState value, $Res Function(LangState) then) =
      _$LangStateCopyWithImpl<$Res>;
  $Res call({String locale, bool isLoaded});
}

class _$LangStateCopyWithImpl<$Res> implements $LangStateCopyWith<$Res> {
  _$LangStateCopyWithImpl(this._value, this._then);

  final LangState _value;
  // ignore: unused_field
  final $Res Function(LangState) _then;

  @override
  $Res call({
    Object locale = freezed,
    Object isLoaded = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed ? _value.locale : locale as String,
      isLoaded: isLoaded == freezed ? _value.isLoaded : isLoaded as bool,
    ));
  }
}

abstract class _$LangStateCopyWith<$Res> implements $LangStateCopyWith<$Res> {
  factory _$LangStateCopyWith(
          _LangState value, $Res Function(_LangState) then) =
      __$LangStateCopyWithImpl<$Res>;
  @override
  $Res call({String locale, bool isLoaded});
}

class __$LangStateCopyWithImpl<$Res> extends _$LangStateCopyWithImpl<$Res>
    implements _$LangStateCopyWith<$Res> {
  __$LangStateCopyWithImpl(_LangState _value, $Res Function(_LangState) _then)
      : super(_value, (v) => _then(v as _LangState));

  @override
  _LangState get _value => super._value as _LangState;

  @override
  $Res call({
    Object locale = freezed,
    Object isLoaded = freezed,
  }) {
    return _then(_LangState(
      locale == freezed ? _value.locale : locale as String,
      isLoaded == freezed ? _value.isLoaded : isLoaded as bool,
    ));
  }
}

class _$_LangState implements _LangState {
  _$_LangState(this.locale, this.isLoaded)
      : assert(locale != null),
        assert(isLoaded != null);

  @override
  final String locale;
  @override
  final bool isLoaded;

  @override
  String toString() {
    return 'LangState(locale: $locale, isLoaded: $isLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LangState &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)) &&
            (identical(other.isLoaded, isLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.isLoaded, isLoaded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locale) ^
      const DeepCollectionEquality().hash(isLoaded);

  @override
  _$LangStateCopyWith<_LangState> get copyWith =>
      __$LangStateCopyWithImpl<_LangState>(this, _$identity);
}

abstract class _LangState implements LangState {
  factory _LangState(String locale, bool isLoaded) = _$_LangState;

  @override
  String get locale;
  @override
  bool get isLoaded;
  @override
  _$LangStateCopyWith<_LangState> get copyWith;
}
