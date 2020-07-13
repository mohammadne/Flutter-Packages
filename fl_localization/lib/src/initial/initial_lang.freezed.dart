// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'initial_lang.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$InitialLangTearOff {
  const _$InitialLangTearOff();

  FirstItem firstItem() {
    return const FirstItem();
  }

  PreferedLocale preferedLocale(String locale) {
    return PreferedLocale(
      locale,
    );
  }
}

// ignore: unused_element
const $InitialLang = _$InitialLangTearOff();

mixin _$InitialLang {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result firstItem(),
    @required Result preferedLocale(String locale),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result firstItem(),
    Result preferedLocale(String locale),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result firstItem(FirstItem value),
    @required Result preferedLocale(PreferedLocale value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result firstItem(FirstItem value),
    Result preferedLocale(PreferedLocale value),
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

abstract class $FirstItemCopyWith<$Res> {
  factory $FirstItemCopyWith(FirstItem value, $Res Function(FirstItem) then) =
      _$FirstItemCopyWithImpl<$Res>;
}

class _$FirstItemCopyWithImpl<$Res> extends _$InitialLangCopyWithImpl<$Res>
    implements $FirstItemCopyWith<$Res> {
  _$FirstItemCopyWithImpl(FirstItem _value, $Res Function(FirstItem) _then)
      : super(_value, (v) => _then(v as FirstItem));

  @override
  FirstItem get _value => super._value as FirstItem;
}

class _$FirstItem implements FirstItem {
  const _$FirstItem();

  @override
  String toString() {
    return 'InitialLang.firstItem()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FirstItem);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result firstItem(),
    @required Result preferedLocale(String locale),
  }) {
    assert(firstItem != null);
    assert(preferedLocale != null);
    return firstItem();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result firstItem(),
    Result preferedLocale(String locale),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firstItem != null) {
      return firstItem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result firstItem(FirstItem value),
    @required Result preferedLocale(PreferedLocale value),
  }) {
    assert(firstItem != null);
    assert(preferedLocale != null);
    return firstItem(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result firstItem(FirstItem value),
    Result preferedLocale(PreferedLocale value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firstItem != null) {
      return firstItem(this);
    }
    return orElse();
  }
}

abstract class FirstItem implements InitialLang {
  const factory FirstItem() = _$FirstItem;
}

abstract class $PreferedLocaleCopyWith<$Res> {
  factory $PreferedLocaleCopyWith(
          PreferedLocale value, $Res Function(PreferedLocale) then) =
      _$PreferedLocaleCopyWithImpl<$Res>;
  $Res call({String locale});
}

class _$PreferedLocaleCopyWithImpl<$Res> extends _$InitialLangCopyWithImpl<$Res>
    implements $PreferedLocaleCopyWith<$Res> {
  _$PreferedLocaleCopyWithImpl(
      PreferedLocale _value, $Res Function(PreferedLocale) _then)
      : super(_value, (v) => _then(v as PreferedLocale));

  @override
  PreferedLocale get _value => super._value as PreferedLocale;

  @override
  $Res call({
    Object locale = freezed,
  }) {
    return _then(PreferedLocale(
      locale == freezed ? _value.locale : locale as String,
    ));
  }
}

class _$PreferedLocale implements PreferedLocale {
  const _$PreferedLocale(this.locale) : assert(locale != null);

  @override
  final String locale;

  @override
  String toString() {
    return 'InitialLang.preferedLocale(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PreferedLocale &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @override
  $PreferedLocaleCopyWith<PreferedLocale> get copyWith =>
      _$PreferedLocaleCopyWithImpl<PreferedLocale>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result firstItem(),
    @required Result preferedLocale(String locale),
  }) {
    assert(firstItem != null);
    assert(preferedLocale != null);
    return preferedLocale(locale);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result firstItem(),
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
    @required Result firstItem(FirstItem value),
    @required Result preferedLocale(PreferedLocale value),
  }) {
    assert(firstItem != null);
    assert(preferedLocale != null);
    return preferedLocale(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result firstItem(FirstItem value),
    Result preferedLocale(PreferedLocale value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (preferedLocale != null) {
      return preferedLocale(this);
    }
    return orElse();
  }
}

abstract class PreferedLocale implements InitialLang {
  const factory PreferedLocale(String locale) = _$PreferedLocale;

  String get locale;
  $PreferedLocaleCopyWith<PreferedLocale> get copyWith;
}
