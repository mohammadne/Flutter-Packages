// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'fl_audio_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FlAudioOrder _$FlAudioOrderFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'order':
      return _Order.fromJson(json);
    case 'repeatAll':
      return _RepeatAll.fromJson(json);
    case 'repeatOne':
      return _RepeatOne.fromJson(json);
    case 'shuffle':
      return _Shuffle.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$FlAudioOrderTearOff {
  const _$FlAudioOrderTearOff();

  _Order order() {
    return const _Order();
  }

  _RepeatAll repeatAll() {
    return const _RepeatAll();
  }

  _RepeatOne repeatOne() {
    return const _RepeatOne();
  }

  _Shuffle shuffle() {
    return const _Shuffle();
  }
}

// ignore: unused_element
const $FlAudioOrder = _$FlAudioOrderTearOff();

mixin _$FlAudioOrder {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result order(),
    @required Result repeatAll(),
    @required Result repeatOne(),
    @required Result shuffle(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result order(),
    Result repeatAll(),
    Result repeatOne(),
    Result shuffle(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result order(_Order value),
    @required Result repeatAll(_RepeatAll value),
    @required Result repeatOne(_RepeatOne value),
    @required Result shuffle(_Shuffle value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result order(_Order value),
    Result repeatAll(_RepeatAll value),
    Result repeatOne(_RepeatOne value),
    Result shuffle(_Shuffle value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

abstract class $FlAudioOrderCopyWith<$Res> {
  factory $FlAudioOrderCopyWith(
          FlAudioOrder value, $Res Function(FlAudioOrder) then) =
      _$FlAudioOrderCopyWithImpl<$Res>;
}

class _$FlAudioOrderCopyWithImpl<$Res> implements $FlAudioOrderCopyWith<$Res> {
  _$FlAudioOrderCopyWithImpl(this._value, this._then);

  final FlAudioOrder _value;
  // ignore: unused_field
  final $Res Function(FlAudioOrder) _then;
}

abstract class _$OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) then) =
      __$OrderCopyWithImpl<$Res>;
}

class __$OrderCopyWithImpl<$Res> extends _$FlAudioOrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(_Order _value, $Res Function(_Order) _then)
      : super(_value, (v) => _then(v as _Order));

  @override
  _Order get _value => super._value as _Order;
}

@JsonSerializable()
class _$_Order implements _Order {
  const _$_Order();

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderFromJson(json);

  @override
  String toString() {
    return 'FlAudioOrder.order()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Order);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result order(),
    @required Result repeatAll(),
    @required Result repeatOne(),
    @required Result shuffle(),
  }) {
    assert(order != null);
    assert(repeatAll != null);
    assert(repeatOne != null);
    assert(shuffle != null);
    return order();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result order(),
    Result repeatAll(),
    Result repeatOne(),
    Result shuffle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (order != null) {
      return order();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result order(_Order value),
    @required Result repeatAll(_RepeatAll value),
    @required Result repeatOne(_RepeatOne value),
    @required Result shuffle(_Shuffle value),
  }) {
    assert(order != null);
    assert(repeatAll != null);
    assert(repeatOne != null);
    assert(shuffle != null);
    return order(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result order(_Order value),
    Result repeatAll(_RepeatAll value),
    Result repeatOne(_RepeatOne value),
    Result shuffle(_Shuffle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (order != null) {
      return order(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderToJson(this)..['runtimeType'] = 'order';
  }
}

abstract class _Order implements FlAudioOrder {
  const factory _Order() = _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;
}

abstract class _$RepeatAllCopyWith<$Res> {
  factory _$RepeatAllCopyWith(
          _RepeatAll value, $Res Function(_RepeatAll) then) =
      __$RepeatAllCopyWithImpl<$Res>;
}

class __$RepeatAllCopyWithImpl<$Res> extends _$FlAudioOrderCopyWithImpl<$Res>
    implements _$RepeatAllCopyWith<$Res> {
  __$RepeatAllCopyWithImpl(_RepeatAll _value, $Res Function(_RepeatAll) _then)
      : super(_value, (v) => _then(v as _RepeatAll));

  @override
  _RepeatAll get _value => super._value as _RepeatAll;
}

@JsonSerializable()
class _$_RepeatAll implements _RepeatAll {
  const _$_RepeatAll();

  factory _$_RepeatAll.fromJson(Map<String, dynamic> json) =>
      _$_$_RepeatAllFromJson(json);

  @override
  String toString() {
    return 'FlAudioOrder.repeatAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RepeatAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result order(),
    @required Result repeatAll(),
    @required Result repeatOne(),
    @required Result shuffle(),
  }) {
    assert(order != null);
    assert(repeatAll != null);
    assert(repeatOne != null);
    assert(shuffle != null);
    return repeatAll();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result order(),
    Result repeatAll(),
    Result repeatOne(),
    Result shuffle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (repeatAll != null) {
      return repeatAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result order(_Order value),
    @required Result repeatAll(_RepeatAll value),
    @required Result repeatOne(_RepeatOne value),
    @required Result shuffle(_Shuffle value),
  }) {
    assert(order != null);
    assert(repeatAll != null);
    assert(repeatOne != null);
    assert(shuffle != null);
    return repeatAll(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result order(_Order value),
    Result repeatAll(_RepeatAll value),
    Result repeatOne(_RepeatOne value),
    Result shuffle(_Shuffle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (repeatAll != null) {
      return repeatAll(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RepeatAllToJson(this)..['runtimeType'] = 'repeatAll';
  }
}

abstract class _RepeatAll implements FlAudioOrder {
  const factory _RepeatAll() = _$_RepeatAll;

  factory _RepeatAll.fromJson(Map<String, dynamic> json) =
      _$_RepeatAll.fromJson;
}

abstract class _$RepeatOneCopyWith<$Res> {
  factory _$RepeatOneCopyWith(
          _RepeatOne value, $Res Function(_RepeatOne) then) =
      __$RepeatOneCopyWithImpl<$Res>;
}

class __$RepeatOneCopyWithImpl<$Res> extends _$FlAudioOrderCopyWithImpl<$Res>
    implements _$RepeatOneCopyWith<$Res> {
  __$RepeatOneCopyWithImpl(_RepeatOne _value, $Res Function(_RepeatOne) _then)
      : super(_value, (v) => _then(v as _RepeatOne));

  @override
  _RepeatOne get _value => super._value as _RepeatOne;
}

@JsonSerializable()
class _$_RepeatOne implements _RepeatOne {
  const _$_RepeatOne();

  factory _$_RepeatOne.fromJson(Map<String, dynamic> json) =>
      _$_$_RepeatOneFromJson(json);

  @override
  String toString() {
    return 'FlAudioOrder.repeatOne()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RepeatOne);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result order(),
    @required Result repeatAll(),
    @required Result repeatOne(),
    @required Result shuffle(),
  }) {
    assert(order != null);
    assert(repeatAll != null);
    assert(repeatOne != null);
    assert(shuffle != null);
    return repeatOne();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result order(),
    Result repeatAll(),
    Result repeatOne(),
    Result shuffle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (repeatOne != null) {
      return repeatOne();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result order(_Order value),
    @required Result repeatAll(_RepeatAll value),
    @required Result repeatOne(_RepeatOne value),
    @required Result shuffle(_Shuffle value),
  }) {
    assert(order != null);
    assert(repeatAll != null);
    assert(repeatOne != null);
    assert(shuffle != null);
    return repeatOne(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result order(_Order value),
    Result repeatAll(_RepeatAll value),
    Result repeatOne(_RepeatOne value),
    Result shuffle(_Shuffle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (repeatOne != null) {
      return repeatOne(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RepeatOneToJson(this)..['runtimeType'] = 'repeatOne';
  }
}

abstract class _RepeatOne implements FlAudioOrder {
  const factory _RepeatOne() = _$_RepeatOne;

  factory _RepeatOne.fromJson(Map<String, dynamic> json) =
      _$_RepeatOne.fromJson;
}

abstract class _$ShuffleCopyWith<$Res> {
  factory _$ShuffleCopyWith(_Shuffle value, $Res Function(_Shuffle) then) =
      __$ShuffleCopyWithImpl<$Res>;
}

class __$ShuffleCopyWithImpl<$Res> extends _$FlAudioOrderCopyWithImpl<$Res>
    implements _$ShuffleCopyWith<$Res> {
  __$ShuffleCopyWithImpl(_Shuffle _value, $Res Function(_Shuffle) _then)
      : super(_value, (v) => _then(v as _Shuffle));

  @override
  _Shuffle get _value => super._value as _Shuffle;
}

@JsonSerializable()
class _$_Shuffle implements _Shuffle {
  const _$_Shuffle();

  factory _$_Shuffle.fromJson(Map<String, dynamic> json) =>
      _$_$_ShuffleFromJson(json);

  @override
  String toString() {
    return 'FlAudioOrder.shuffle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Shuffle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result order(),
    @required Result repeatAll(),
    @required Result repeatOne(),
    @required Result shuffle(),
  }) {
    assert(order != null);
    assert(repeatAll != null);
    assert(repeatOne != null);
    assert(shuffle != null);
    return shuffle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result order(),
    Result repeatAll(),
    Result repeatOne(),
    Result shuffle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shuffle != null) {
      return shuffle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result order(_Order value),
    @required Result repeatAll(_RepeatAll value),
    @required Result repeatOne(_RepeatOne value),
    @required Result shuffle(_Shuffle value),
  }) {
    assert(order != null);
    assert(repeatAll != null);
    assert(repeatOne != null);
    assert(shuffle != null);
    return shuffle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result order(_Order value),
    Result repeatAll(_RepeatAll value),
    Result repeatOne(_RepeatOne value),
    Result shuffle(_Shuffle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shuffle != null) {
      return shuffle(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShuffleToJson(this)..['runtimeType'] = 'shuffle';
  }
}

abstract class _Shuffle implements FlAudioOrder {
  const factory _Shuffle() = _$_Shuffle;

  factory _Shuffle.fromJson(Map<String, dynamic> json) = _$_Shuffle.fromJson;
}
