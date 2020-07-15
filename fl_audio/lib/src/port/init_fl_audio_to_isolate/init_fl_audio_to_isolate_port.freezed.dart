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
      {int mediaItemIndex,
      @required
      @JsonKey(toJson: _toMI, fromJson: _fromMI)
          List<MediaItem> mediaItems,
      @required
      @JsonKey(toJson: _toFA, fromJson: _fromFA)
          FlAudioOrder flAudioOrder}) {
    return _InitFlAudioToIsolatePort(
      mediaItemIndex: mediaItemIndex,
      mediaItems: mediaItems,
      flAudioOrder: flAudioOrder,
    );
  }
}

// ignore: unused_element
const $InitFlAudioToIsolatePort = _$InitFlAudioToIsolatePortTearOff();

mixin _$InitFlAudioToIsolatePort {
  int get mediaItemIndex;
  @JsonKey(toJson: _toMI, fromJson: _fromMI)
  List<MediaItem> get mediaItems;
  @JsonKey(toJson: _toFA, fromJson: _fromFA)
  FlAudioOrder get flAudioOrder;

  Map<String, dynamic> toJson();
  $InitFlAudioToIsolatePortCopyWith<InitFlAudioToIsolatePort> get copyWith;
}

abstract class $InitFlAudioToIsolatePortCopyWith<$Res> {
  factory $InitFlAudioToIsolatePortCopyWith(InitFlAudioToIsolatePort value,
          $Res Function(InitFlAudioToIsolatePort) then) =
      _$InitFlAudioToIsolatePortCopyWithImpl<$Res>;
  $Res call(
      {int mediaItemIndex,
      @JsonKey(toJson: _toMI, fromJson: _fromMI) List<MediaItem> mediaItems,
      @JsonKey(toJson: _toFA, fromJson: _fromFA) FlAudioOrder flAudioOrder});

  $FlAudioOrderCopyWith<$Res> get flAudioOrder;
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
    Object mediaItems = freezed,
    Object flAudioOrder = freezed,
  }) {
    return _then(_value.copyWith(
      mediaItemIndex: mediaItemIndex == freezed
          ? _value.mediaItemIndex
          : mediaItemIndex as int,
      mediaItems: mediaItems == freezed
          ? _value.mediaItems
          : mediaItems as List<MediaItem>,
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

abstract class _$InitFlAudioToIsolatePortCopyWith<$Res>
    implements $InitFlAudioToIsolatePortCopyWith<$Res> {
  factory _$InitFlAudioToIsolatePortCopyWith(_InitFlAudioToIsolatePort value,
          $Res Function(_InitFlAudioToIsolatePort) then) =
      __$InitFlAudioToIsolatePortCopyWithImpl<$Res>;
  @override
  $Res call(
      {int mediaItemIndex,
      @JsonKey(toJson: _toMI, fromJson: _fromMI) List<MediaItem> mediaItems,
      @JsonKey(toJson: _toFA, fromJson: _fromFA) FlAudioOrder flAudioOrder});

  @override
  $FlAudioOrderCopyWith<$Res> get flAudioOrder;
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
    Object mediaItems = freezed,
    Object flAudioOrder = freezed,
  }) {
    return _then(_InitFlAudioToIsolatePort(
      mediaItemIndex: mediaItemIndex == freezed
          ? _value.mediaItemIndex
          : mediaItemIndex as int,
      mediaItems: mediaItems == freezed
          ? _value.mediaItems
          : mediaItems as List<MediaItem>,
      flAudioOrder: flAudioOrder == freezed
          ? _value.flAudioOrder
          : flAudioOrder as FlAudioOrder,
    ));
  }
}

@JsonSerializable()
class _$_InitFlAudioToIsolatePort implements _InitFlAudioToIsolatePort {
  const _$_InitFlAudioToIsolatePort(
      {this.mediaItemIndex,
      @required @JsonKey(toJson: _toMI, fromJson: _fromMI) this.mediaItems,
      @required @JsonKey(toJson: _toFA, fromJson: _fromFA) this.flAudioOrder})
      : assert(mediaItems != null),
        assert(flAudioOrder != null);

  factory _$_InitFlAudioToIsolatePort.fromJson(Map<String, dynamic> json) =>
      _$_$_InitFlAudioToIsolatePortFromJson(json);

  @override
  final int mediaItemIndex;
  @override
  @JsonKey(toJson: _toMI, fromJson: _fromMI)
  final List<MediaItem> mediaItems;
  @override
  @JsonKey(toJson: _toFA, fromJson: _fromFA)
  final FlAudioOrder flAudioOrder;

  @override
  String toString() {
    return 'InitFlAudioToIsolatePort(mediaItemIndex: $mediaItemIndex, mediaItems: $mediaItems, flAudioOrder: $flAudioOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitFlAudioToIsolatePort &&
            (identical(other.mediaItemIndex, mediaItemIndex) ||
                const DeepCollectionEquality()
                    .equals(other.mediaItemIndex, mediaItemIndex)) &&
            (identical(other.mediaItems, mediaItems) ||
                const DeepCollectionEquality()
                    .equals(other.mediaItems, mediaItems)) &&
            (identical(other.flAudioOrder, flAudioOrder) ||
                const DeepCollectionEquality()
                    .equals(other.flAudioOrder, flAudioOrder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mediaItemIndex) ^
      const DeepCollectionEquality().hash(mediaItems) ^
      const DeepCollectionEquality().hash(flAudioOrder);

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
      {int mediaItemIndex,
      @required
      @JsonKey(toJson: _toMI, fromJson: _fromMI)
          List<MediaItem> mediaItems,
      @required
      @JsonKey(toJson: _toFA, fromJson: _fromFA)
          FlAudioOrder flAudioOrder}) = _$_InitFlAudioToIsolatePort;

  factory _InitFlAudioToIsolatePort.fromJson(Map<String, dynamic> json) =
      _$_InitFlAudioToIsolatePort.fromJson;

  @override
  int get mediaItemIndex;
  @override
  @JsonKey(toJson: _toMI, fromJson: _fromMI)
  List<MediaItem> get mediaItems;
  @override
  @JsonKey(toJson: _toFA, fromJson: _fromFA)
  FlAudioOrder get flAudioOrder;
  @override
  _$InitFlAudioToIsolatePortCopyWith<_InitFlAudioToIsolatePort> get copyWith;
}
