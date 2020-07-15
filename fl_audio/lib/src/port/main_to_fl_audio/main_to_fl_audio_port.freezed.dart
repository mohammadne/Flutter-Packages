// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'main_to_fl_audio_port.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MainToFlAudioPort _$MainToFlAudioPortFromJson(Map<String, dynamic> json) {
  return _MainToFlAudioPort.fromJson(json);
}

class _$MainToFlAudioPortTearOff {
  const _$MainToFlAudioPortTearOff();

  _MainToFlAudioPort call({@required FlAudioOrder flAudioOrder}) {
    return _MainToFlAudioPort(
      flAudioOrder: flAudioOrder,
    );
  }
}

// ignore: unused_element
const $MainToFlAudioPort = _$MainToFlAudioPortTearOff();

mixin _$MainToFlAudioPort {
  FlAudioOrder get flAudioOrder;

  Map<String, dynamic> toJson();
  $MainToFlAudioPortCopyWith<MainToFlAudioPort> get copyWith;
}

abstract class $MainToFlAudioPortCopyWith<$Res> {
  factory $MainToFlAudioPortCopyWith(
          MainToFlAudioPort value, $Res Function(MainToFlAudioPort) then) =
      _$MainToFlAudioPortCopyWithImpl<$Res>;
  $Res call({FlAudioOrder flAudioOrder});

  $FlAudioOrderCopyWith<$Res> get flAudioOrder;
}

class _$MainToFlAudioPortCopyWithImpl<$Res>
    implements $MainToFlAudioPortCopyWith<$Res> {
  _$MainToFlAudioPortCopyWithImpl(this._value, this._then);

  final MainToFlAudioPort _value;
  // ignore: unused_field
  final $Res Function(MainToFlAudioPort) _then;

  @override
  $Res call({
    Object flAudioOrder = freezed,
  }) {
    return _then(_value.copyWith(
      flAudioOrder: flAudioOrder == freezed
          ? _value.flAudioOrder
          : flAudioOrder as FlAudioOrder,
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

abstract class _$MainToFlAudioPortCopyWith<$Res>
    implements $MainToFlAudioPortCopyWith<$Res> {
  factory _$MainToFlAudioPortCopyWith(
          _MainToFlAudioPort value, $Res Function(_MainToFlAudioPort) then) =
      __$MainToFlAudioPortCopyWithImpl<$Res>;
  @override
  $Res call({FlAudioOrder flAudioOrder});

  @override
  $FlAudioOrderCopyWith<$Res> get flAudioOrder;
}

class __$MainToFlAudioPortCopyWithImpl<$Res>
    extends _$MainToFlAudioPortCopyWithImpl<$Res>
    implements _$MainToFlAudioPortCopyWith<$Res> {
  __$MainToFlAudioPortCopyWithImpl(
      _MainToFlAudioPort _value, $Res Function(_MainToFlAudioPort) _then)
      : super(_value, (v) => _then(v as _MainToFlAudioPort));

  @override
  _MainToFlAudioPort get _value => super._value as _MainToFlAudioPort;

  @override
  $Res call({
    Object flAudioOrder = freezed,
  }) {
    return _then(_MainToFlAudioPort(
      flAudioOrder: flAudioOrder == freezed
          ? _value.flAudioOrder
          : flAudioOrder as FlAudioOrder,
    ));
  }
}

@JsonSerializable()
class _$_MainToFlAudioPort implements _MainToFlAudioPort {
  const _$_MainToFlAudioPort({@required this.flAudioOrder})
      : assert(flAudioOrder != null);

  factory _$_MainToFlAudioPort.fromJson(Map<String, dynamic> json) =>
      _$_$_MainToFlAudioPortFromJson(json);

  @override
  final FlAudioOrder flAudioOrder;

  @override
  String toString() {
    return 'MainToFlAudioPort(flAudioOrder: $flAudioOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainToFlAudioPort &&
            (identical(other.flAudioOrder, flAudioOrder) ||
                const DeepCollectionEquality()
                    .equals(other.flAudioOrder, flAudioOrder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(flAudioOrder);

  @override
  _$MainToFlAudioPortCopyWith<_MainToFlAudioPort> get copyWith =>
      __$MainToFlAudioPortCopyWithImpl<_MainToFlAudioPort>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MainToFlAudioPortToJson(this);
  }
}

abstract class _MainToFlAudioPort implements MainToFlAudioPort {
  const factory _MainToFlAudioPort({@required FlAudioOrder flAudioOrder}) =
      _$_MainToFlAudioPort;

  factory _MainToFlAudioPort.fromJson(Map<String, dynamic> json) =
      _$_MainToFlAudioPort.fromJson;

  @override
  FlAudioOrder get flAudioOrder;
  @override
  _$MainToFlAudioPortCopyWith<_MainToFlAudioPort> get copyWith;
}
