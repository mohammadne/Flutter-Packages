// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'fl_audio_to_isolate_port.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FlAudioToIsolatePort _$FlAudioToIsolatePortFromJson(Map<String, dynamic> json) {
  return _FlAudioToIsolatePort.fromJson(json);
}

class _$FlAudioToIsolatePortTearOff {
  const _$FlAudioToIsolatePortTearOff();

  _FlAudioToIsolatePort call(
      {@required
      @JsonKey(toJson: _toFA, fromJson: _fromFA)
          FlAudioOrder flAudioOrder}) {
    return _FlAudioToIsolatePort(
      flAudioOrder: flAudioOrder,
    );
  }
}

// ignore: unused_element
const $FlAudioToIsolatePort = _$FlAudioToIsolatePortTearOff();

mixin _$FlAudioToIsolatePort {
  @JsonKey(toJson: _toFA, fromJson: _fromFA)
  FlAudioOrder get flAudioOrder;

  Map<String, dynamic> toJson();
  $FlAudioToIsolatePortCopyWith<FlAudioToIsolatePort> get copyWith;
}

abstract class $FlAudioToIsolatePortCopyWith<$Res> {
  factory $FlAudioToIsolatePortCopyWith(FlAudioToIsolatePort value,
          $Res Function(FlAudioToIsolatePort) then) =
      _$FlAudioToIsolatePortCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(toJson: _toFA, fromJson: _fromFA) FlAudioOrder flAudioOrder});

  $FlAudioOrderCopyWith<$Res> get flAudioOrder;
}

class _$FlAudioToIsolatePortCopyWithImpl<$Res>
    implements $FlAudioToIsolatePortCopyWith<$Res> {
  _$FlAudioToIsolatePortCopyWithImpl(this._value, this._then);

  final FlAudioToIsolatePort _value;
  // ignore: unused_field
  final $Res Function(FlAudioToIsolatePort) _then;

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

abstract class _$FlAudioToIsolatePortCopyWith<$Res>
    implements $FlAudioToIsolatePortCopyWith<$Res> {
  factory _$FlAudioToIsolatePortCopyWith(_FlAudioToIsolatePort value,
          $Res Function(_FlAudioToIsolatePort) then) =
      __$FlAudioToIsolatePortCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(toJson: _toFA, fromJson: _fromFA) FlAudioOrder flAudioOrder});

  @override
  $FlAudioOrderCopyWith<$Res> get flAudioOrder;
}

class __$FlAudioToIsolatePortCopyWithImpl<$Res>
    extends _$FlAudioToIsolatePortCopyWithImpl<$Res>
    implements _$FlAudioToIsolatePortCopyWith<$Res> {
  __$FlAudioToIsolatePortCopyWithImpl(
      _FlAudioToIsolatePort _value, $Res Function(_FlAudioToIsolatePort) _then)
      : super(_value, (v) => _then(v as _FlAudioToIsolatePort));

  @override
  _FlAudioToIsolatePort get _value => super._value as _FlAudioToIsolatePort;

  @override
  $Res call({
    Object flAudioOrder = freezed,
  }) {
    return _then(_FlAudioToIsolatePort(
      flAudioOrder: flAudioOrder == freezed
          ? _value.flAudioOrder
          : flAudioOrder as FlAudioOrder,
    ));
  }
}

@JsonSerializable()
class _$_FlAudioToIsolatePort implements _FlAudioToIsolatePort {
  const _$_FlAudioToIsolatePort(
      {@required @JsonKey(toJson: _toFA, fromJson: _fromFA) this.flAudioOrder})
      : assert(flAudioOrder != null);

  factory _$_FlAudioToIsolatePort.fromJson(Map<String, dynamic> json) =>
      _$_$_FlAudioToIsolatePortFromJson(json);

  @override
  @JsonKey(toJson: _toFA, fromJson: _fromFA)
  final FlAudioOrder flAudioOrder;

  @override
  String toString() {
    return 'FlAudioToIsolatePort(flAudioOrder: $flAudioOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FlAudioToIsolatePort &&
            (identical(other.flAudioOrder, flAudioOrder) ||
                const DeepCollectionEquality()
                    .equals(other.flAudioOrder, flAudioOrder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(flAudioOrder);

  @override
  _$FlAudioToIsolatePortCopyWith<_FlAudioToIsolatePort> get copyWith =>
      __$FlAudioToIsolatePortCopyWithImpl<_FlAudioToIsolatePort>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FlAudioToIsolatePortToJson(this);
  }
}

abstract class _FlAudioToIsolatePort implements FlAudioToIsolatePort {
  const factory _FlAudioToIsolatePort(
      {@required
      @JsonKey(toJson: _toFA, fromJson: _fromFA)
          FlAudioOrder flAudioOrder}) = _$_FlAudioToIsolatePort;

  factory _FlAudioToIsolatePort.fromJson(Map<String, dynamic> json) =
      _$_FlAudioToIsolatePort.fromJson;

  @override
  @JsonKey(toJson: _toFA, fromJson: _fromFA)
  FlAudioOrder get flAudioOrder;
  @override
  _$FlAudioToIsolatePortCopyWith<_FlAudioToIsolatePort> get copyWith;
}
