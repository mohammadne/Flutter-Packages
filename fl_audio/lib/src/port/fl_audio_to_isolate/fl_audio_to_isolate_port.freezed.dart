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

  _FlAudioToIsolatePort call({@required String id}) {
    return _FlAudioToIsolatePort(
      id: id,
    );
  }
}

// ignore: unused_element
const $FlAudioToIsolatePort = _$FlAudioToIsolatePortTearOff();

mixin _$FlAudioToIsolatePort {
  String get id;

  Map<String, dynamic> toJson();
  $FlAudioToIsolatePortCopyWith<FlAudioToIsolatePort> get copyWith;
}

abstract class $FlAudioToIsolatePortCopyWith<$Res> {
  factory $FlAudioToIsolatePortCopyWith(FlAudioToIsolatePort value,
          $Res Function(FlAudioToIsolatePort) then) =
      _$FlAudioToIsolatePortCopyWithImpl<$Res>;
  $Res call({String id});
}

class _$FlAudioToIsolatePortCopyWithImpl<$Res>
    implements $FlAudioToIsolatePortCopyWith<$Res> {
  _$FlAudioToIsolatePortCopyWithImpl(this._value, this._then);

  final FlAudioToIsolatePort _value;
  // ignore: unused_field
  final $Res Function(FlAudioToIsolatePort) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

abstract class _$FlAudioToIsolatePortCopyWith<$Res>
    implements $FlAudioToIsolatePortCopyWith<$Res> {
  factory _$FlAudioToIsolatePortCopyWith(_FlAudioToIsolatePort value,
          $Res Function(_FlAudioToIsolatePort) then) =
      __$FlAudioToIsolatePortCopyWithImpl<$Res>;
  @override
  $Res call({String id});
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
    Object id = freezed,
  }) {
    return _then(_FlAudioToIsolatePort(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()
class _$_FlAudioToIsolatePort implements _FlAudioToIsolatePort {
  const _$_FlAudioToIsolatePort({@required this.id}) : assert(id != null);

  factory _$_FlAudioToIsolatePort.fromJson(Map<String, dynamic> json) =>
      _$_$_FlAudioToIsolatePortFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'FlAudioToIsolatePort(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FlAudioToIsolatePort &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

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
  const factory _FlAudioToIsolatePort({@required String id}) =
      _$_FlAudioToIsolatePort;

  factory _FlAudioToIsolatePort.fromJson(Map<String, dynamic> json) =
      _$_FlAudioToIsolatePort.fromJson;

  @override
  String get id;
  @override
  _$FlAudioToIsolatePortCopyWith<_FlAudioToIsolatePort> get copyWith;
}
