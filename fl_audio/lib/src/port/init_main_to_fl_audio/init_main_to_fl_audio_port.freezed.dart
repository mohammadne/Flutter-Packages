// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'init_main_to_fl_audio_port.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
InitMainToFlAudioPort _$InitMainToFlAudioPortFromJson(
    Map<String, dynamic> json) {
  return _InitMainToFlAudioPort.fromJson(json);
}

class _$InitMainToFlAudioPortTearOff {
  const _$InitMainToFlAudioPortTearOff();

  _InitMainToFlAudioPort call(
      {@required int flAudioItemIndex,
      @required FlAudioOrder flAudioOrder,
      @required List<FlAudioItem> flAudioitems}) {
    return _InitMainToFlAudioPort(
      flAudioItemIndex: flAudioItemIndex,
      flAudioOrder: flAudioOrder,
      flAudioitems: flAudioitems,
    );
  }
}

// ignore: unused_element
const $InitMainToFlAudioPort = _$InitMainToFlAudioPortTearOff();

mixin _$InitMainToFlAudioPort {
  int get flAudioItemIndex;
  FlAudioOrder get flAudioOrder;
  List<FlAudioItem> get flAudioitems;

  Map<String, dynamic> toJson();
  $InitMainToFlAudioPortCopyWith<InitMainToFlAudioPort> get copyWith;
}

abstract class $InitMainToFlAudioPortCopyWith<$Res> {
  factory $InitMainToFlAudioPortCopyWith(InitMainToFlAudioPort value,
          $Res Function(InitMainToFlAudioPort) then) =
      _$InitMainToFlAudioPortCopyWithImpl<$Res>;
  $Res call(
      {int flAudioItemIndex,
      FlAudioOrder flAudioOrder,
      List<FlAudioItem> flAudioitems});

  $FlAudioOrderCopyWith<$Res> get flAudioOrder;
}

class _$InitMainToFlAudioPortCopyWithImpl<$Res>
    implements $InitMainToFlAudioPortCopyWith<$Res> {
  _$InitMainToFlAudioPortCopyWithImpl(this._value, this._then);

  final InitMainToFlAudioPort _value;
  // ignore: unused_field
  final $Res Function(InitMainToFlAudioPort) _then;

  @override
  $Res call({
    Object flAudioItemIndex = freezed,
    Object flAudioOrder = freezed,
    Object flAudioitems = freezed,
  }) {
    return _then(_value.copyWith(
      flAudioItemIndex: flAudioItemIndex == freezed
          ? _value.flAudioItemIndex
          : flAudioItemIndex as int,
      flAudioOrder: flAudioOrder == freezed
          ? _value.flAudioOrder
          : flAudioOrder as FlAudioOrder,
      flAudioitems: flAudioitems == freezed
          ? _value.flAudioitems
          : flAudioitems as List<FlAudioItem>,
    ));
  }

  @override
  $FlAudioOrderCopyWith<$Res> get flAudioOrder {
    if (_value.flAudioOrder == null) {
      return null;
    }
    return $FlAudioOrderCopyWith<$Res>(_value.flAudioOrder, (value) {
      return _then(_value.copyWith(flAudioOrder: value));
    });
  }
}

abstract class _$InitMainToFlAudioPortCopyWith<$Res>
    implements $InitMainToFlAudioPortCopyWith<$Res> {
  factory _$InitMainToFlAudioPortCopyWith(_InitMainToFlAudioPort value,
          $Res Function(_InitMainToFlAudioPort) then) =
      __$InitMainToFlAudioPortCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flAudioItemIndex,
      FlAudioOrder flAudioOrder,
      List<FlAudioItem> flAudioitems});

  @override
  $FlAudioOrderCopyWith<$Res> get flAudioOrder;
}

class __$InitMainToFlAudioPortCopyWithImpl<$Res>
    extends _$InitMainToFlAudioPortCopyWithImpl<$Res>
    implements _$InitMainToFlAudioPortCopyWith<$Res> {
  __$InitMainToFlAudioPortCopyWithImpl(_InitMainToFlAudioPort _value,
      $Res Function(_InitMainToFlAudioPort) _then)
      : super(_value, (v) => _then(v as _InitMainToFlAudioPort));

  @override
  _InitMainToFlAudioPort get _value => super._value as _InitMainToFlAudioPort;

  @override
  $Res call({
    Object flAudioItemIndex = freezed,
    Object flAudioOrder = freezed,
    Object flAudioitems = freezed,
  }) {
    return _then(_InitMainToFlAudioPort(
      flAudioItemIndex: flAudioItemIndex == freezed
          ? _value.flAudioItemIndex
          : flAudioItemIndex as int,
      flAudioOrder: flAudioOrder == freezed
          ? _value.flAudioOrder
          : flAudioOrder as FlAudioOrder,
      flAudioitems: flAudioitems == freezed
          ? _value.flAudioitems
          : flAudioitems as List<FlAudioItem>,
    ));
  }
}

@JsonSerializable()
class _$_InitMainToFlAudioPort implements _InitMainToFlAudioPort {
  const _$_InitMainToFlAudioPort(
      {@required this.flAudioItemIndex,
      @required this.flAudioOrder,
      @required this.flAudioitems})
      : assert(flAudioItemIndex != null),
        assert(flAudioOrder != null),
        assert(flAudioitems != null);

  factory _$_InitMainToFlAudioPort.fromJson(Map<String, dynamic> json) =>
      _$_$_InitMainToFlAudioPortFromJson(json);

  @override
  final int flAudioItemIndex;
  @override
  final FlAudioOrder flAudioOrder;
  @override
  final List<FlAudioItem> flAudioitems;

  @override
  String toString() {
    return 'InitMainToFlAudioPort(flAudioItemIndex: $flAudioItemIndex, flAudioOrder: $flAudioOrder, flAudioitems: $flAudioitems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitMainToFlAudioPort &&
            (identical(other.flAudioItemIndex, flAudioItemIndex) ||
                const DeepCollectionEquality()
                    .equals(other.flAudioItemIndex, flAudioItemIndex)) &&
            (identical(other.flAudioOrder, flAudioOrder) ||
                const DeepCollectionEquality()
                    .equals(other.flAudioOrder, flAudioOrder)) &&
            (identical(other.flAudioitems, flAudioitems) ||
                const DeepCollectionEquality()
                    .equals(other.flAudioitems, flAudioitems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flAudioItemIndex) ^
      const DeepCollectionEquality().hash(flAudioOrder) ^
      const DeepCollectionEquality().hash(flAudioitems);

  @override
  _$InitMainToFlAudioPortCopyWith<_InitMainToFlAudioPort> get copyWith =>
      __$InitMainToFlAudioPortCopyWithImpl<_InitMainToFlAudioPort>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InitMainToFlAudioPortToJson(this);
  }
}

abstract class _InitMainToFlAudioPort implements InitMainToFlAudioPort {
  const factory _InitMainToFlAudioPort(
      {@required int flAudioItemIndex,
      @required FlAudioOrder flAudioOrder,
      @required List<FlAudioItem> flAudioitems}) = _$_InitMainToFlAudioPort;

  factory _InitMainToFlAudioPort.fromJson(Map<String, dynamic> json) =
      _$_InitMainToFlAudioPort.fromJson;

  @override
  int get flAudioItemIndex;
  @override
  FlAudioOrder get flAudioOrder;
  @override
  List<FlAudioItem> get flAudioitems;
  @override
  _$InitMainToFlAudioPortCopyWith<_InitMainToFlAudioPort> get copyWith;
}
