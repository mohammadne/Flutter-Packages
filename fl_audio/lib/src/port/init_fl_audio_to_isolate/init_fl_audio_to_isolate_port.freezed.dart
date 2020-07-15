// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'init_fl_audio_to_isolate_port.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
InitFlAudioToIsolatePort _$InitFlAudioToIsolatePortFromJson(
    Map<String, dynamic> json) {
  return _InitFlAudioToIsolatePort.fromJson(json);
}

class _$InitFlAudioToIsolatePortTearOff {
  const _$InitFlAudioToIsolatePortTearOff();

  _InitFlAudioToIsolatePort call(
      {@required int mediaItemIndex,
      @required Map<String, dynamic> flAudioOrder,
      @required List<Map<String, dynamic>> flAudioitems}) {
    return _InitFlAudioToIsolatePort(
      mediaItemIndex: mediaItemIndex,
      flAudioOrder: flAudioOrder,
      flAudioitems: flAudioitems,
    );
  }
}

// ignore: unused_element
const $InitFlAudioToIsolatePort = _$InitFlAudioToIsolatePortTearOff();

mixin _$InitFlAudioToIsolatePort {
  int get mediaItemIndex;
  Map<String, dynamic> get flAudioOrder;
  List<Map<String, dynamic>> get flAudioitems;

  Map<String, dynamic> toJson();
  $InitFlAudioToIsolatePortCopyWith<InitFlAudioToIsolatePort> get copyWith;
}

abstract class $InitFlAudioToIsolatePortCopyWith<$Res> {
  factory $InitFlAudioToIsolatePortCopyWith(InitFlAudioToIsolatePort value,
          $Res Function(InitFlAudioToIsolatePort) then) =
      _$InitFlAudioToIsolatePortCopyWithImpl<$Res>;
  $Res call(
      {int mediaItemIndex,
      Map<String, dynamic> flAudioOrder,
      List<Map<String, dynamic>> flAudioitems});
}

class _$InitFlAudioToIsolatePortCopyWithImpl<$Res>
    implements $InitFlAudioToIsolatePortCopyWith<$Res> {
  _$InitFlAudioToIsolatePortCopyWithImpl(this._value, this._then);

  final InitFlAudioToIsolatePort _value;
  // ignore: unused_field
  final $Res Function(InitFlAudioToIsolatePort) _then;

  @override
  $Res call({
    Object mediaItemIndex = freezed,
    Object flAudioOrder = freezed,
    Object flAudioitems = freezed,
  }) {
    return _then(_value.copyWith(
      mediaItemIndex: mediaItemIndex == freezed
          ? _value.mediaItemIndex
          : mediaItemIndex as int,
      flAudioOrder: flAudioOrder == freezed
          ? _value.flAudioOrder
          : flAudioOrder as Map<String, dynamic>,
      flAudioitems: flAudioitems == freezed
          ? _value.flAudioitems
          : flAudioitems as List<Map<String, dynamic>>,
    ));
  }
}

abstract class _$InitFlAudioToIsolatePortCopyWith<$Res>
    implements $InitFlAudioToIsolatePortCopyWith<$Res> {
  factory _$InitFlAudioToIsolatePortCopyWith(_InitFlAudioToIsolatePort value,
          $Res Function(_InitFlAudioToIsolatePort) then) =
      __$InitFlAudioToIsolatePortCopyWithImpl<$Res>;
  @override
  $Res call(
      {int mediaItemIndex,
      Map<String, dynamic> flAudioOrder,
      List<Map<String, dynamic>> flAudioitems});
}

class __$InitFlAudioToIsolatePortCopyWithImpl<$Res>
    extends _$InitFlAudioToIsolatePortCopyWithImpl<$Res>
    implements _$InitFlAudioToIsolatePortCopyWith<$Res> {
  __$InitFlAudioToIsolatePortCopyWithImpl(_InitFlAudioToIsolatePort _value,
      $Res Function(_InitFlAudioToIsolatePort) _then)
      : super(_value, (v) => _then(v as _InitFlAudioToIsolatePort));

  @override
  _InitFlAudioToIsolatePort get _value =>
      super._value as _InitFlAudioToIsolatePort;

  @override
  $Res call({
    Object mediaItemIndex = freezed,
    Object flAudioOrder = freezed,
    Object flAudioitems = freezed,
  }) {
    return _then(_InitFlAudioToIsolatePort(
      mediaItemIndex: mediaItemIndex == freezed
          ? _value.mediaItemIndex
          : mediaItemIndex as int,
      flAudioOrder: flAudioOrder == freezed
          ? _value.flAudioOrder
          : flAudioOrder as Map<String, dynamic>,
      flAudioitems: flAudioitems == freezed
          ? _value.flAudioitems
          : flAudioitems as List<Map<String, dynamic>>,
    ));
  }
}

@JsonSerializable()
class _$_InitFlAudioToIsolatePort implements _InitFlAudioToIsolatePort {
  const _$_InitFlAudioToIsolatePort(
      {@required this.mediaItemIndex,
      @required this.flAudioOrder,
      @required this.flAudioitems})
      : assert(mediaItemIndex != null),
        assert(flAudioOrder != null),
        assert(flAudioitems != null);

  factory _$_InitFlAudioToIsolatePort.fromJson(Map<String, dynamic> json) =>
      _$_$_InitFlAudioToIsolatePortFromJson(json);

  @override
  final int mediaItemIndex;
  @override
  final Map<String, dynamic> flAudioOrder;
  @override
  final List<Map<String, dynamic>> flAudioitems;

  @override
  String toString() {
    return 'InitFlAudioToIsolatePort(mediaItemIndex: $mediaItemIndex, flAudioOrder: $flAudioOrder, flAudioitems: $flAudioitems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitFlAudioToIsolatePort &&
            (identical(other.mediaItemIndex, mediaItemIndex) ||
                const DeepCollectionEquality()
                    .equals(other.mediaItemIndex, mediaItemIndex)) &&
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
      const DeepCollectionEquality().hash(mediaItemIndex) ^
      const DeepCollectionEquality().hash(flAudioOrder) ^
      const DeepCollectionEquality().hash(flAudioitems);

  @override
  _$InitFlAudioToIsolatePortCopyWith<_InitFlAudioToIsolatePort> get copyWith =>
      __$InitFlAudioToIsolatePortCopyWithImpl<_InitFlAudioToIsolatePort>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InitFlAudioToIsolatePortToJson(this);
  }
}

abstract class _InitFlAudioToIsolatePort implements InitFlAudioToIsolatePort {
  const factory _InitFlAudioToIsolatePort(
          {@required int mediaItemIndex,
          @required Map<String, dynamic> flAudioOrder,
          @required List<Map<String, dynamic>> flAudioitems}) =
      _$_InitFlAudioToIsolatePort;

  factory _InitFlAudioToIsolatePort.fromJson(Map<String, dynamic> json) =
      _$_InitFlAudioToIsolatePort.fromJson;

  @override
  int get mediaItemIndex;
  @override
  Map<String, dynamic> get flAudioOrder;
  @override
  List<Map<String, dynamic>> get flAudioitems;
  @override
  _$InitFlAudioToIsolatePortCopyWith<_InitFlAudioToIsolatePort> get copyWith;
}
