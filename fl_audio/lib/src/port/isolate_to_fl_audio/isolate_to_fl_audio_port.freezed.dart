// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'isolate_to_fl_audio_port.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
IsolateToFlAudioPort _$IsolateToFlAudioPortFromJson(Map<String, dynamic> json) {
  return _IsolateToFlAudioPort.fromJson(json);
}

class _$IsolateToFlAudioPortTearOff {
  const _$IsolateToFlAudioPortTearOff();

  _IsolateToFlAudioPort call(
      {@required String id,
      @required String album,
      @required String artist,
      @required String title,
      @required String artUri,
      @required Duration duration}) {
    return _IsolateToFlAudioPort(
      id: id,
      album: album,
      artist: artist,
      title: title,
      artUri: artUri,
      duration: duration,
    );
  }
}

// ignore: unused_element
const $IsolateToFlAudioPort = _$IsolateToFlAudioPortTearOff();

mixin _$IsolateToFlAudioPort {
  String get id;
  String get album;
  String get artist;
  String get title;
  String get artUri;
  Duration get duration;

  Map<String, dynamic> toJson();
  $IsolateToFlAudioPortCopyWith<IsolateToFlAudioPort> get copyWith;
}

abstract class $IsolateToFlAudioPortCopyWith<$Res> {
  factory $IsolateToFlAudioPortCopyWith(IsolateToFlAudioPort value,
          $Res Function(IsolateToFlAudioPort) then) =
      _$IsolateToFlAudioPortCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String album,
      String artist,
      String title,
      String artUri,
      Duration duration});
}

class _$IsolateToFlAudioPortCopyWithImpl<$Res>
    implements $IsolateToFlAudioPortCopyWith<$Res> {
  _$IsolateToFlAudioPortCopyWithImpl(this._value, this._then);

  final IsolateToFlAudioPort _value;
  // ignore: unused_field
  final $Res Function(IsolateToFlAudioPort) _then;

  @override
  $Res call({
    Object id = freezed,
    Object album = freezed,
    Object artist = freezed,
    Object title = freezed,
    Object artUri = freezed,
    Object duration = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      album: album == freezed ? _value.album : album as String,
      artist: artist == freezed ? _value.artist : artist as String,
      title: title == freezed ? _value.title : title as String,
      artUri: artUri == freezed ? _value.artUri : artUri as String,
      duration: duration == freezed ? _value.duration : duration as Duration,
    ));
  }
}

abstract class _$IsolateToFlAudioPortCopyWith<$Res>
    implements $IsolateToFlAudioPortCopyWith<$Res> {
  factory _$IsolateToFlAudioPortCopyWith(_IsolateToFlAudioPort value,
          $Res Function(_IsolateToFlAudioPort) then) =
      __$IsolateToFlAudioPortCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String album,
      String artist,
      String title,
      String artUri,
      Duration duration});
}

class __$IsolateToFlAudioPortCopyWithImpl<$Res>
    extends _$IsolateToFlAudioPortCopyWithImpl<$Res>
    implements _$IsolateToFlAudioPortCopyWith<$Res> {
  __$IsolateToFlAudioPortCopyWithImpl(
      _IsolateToFlAudioPort _value, $Res Function(_IsolateToFlAudioPort) _then)
      : super(_value, (v) => _then(v as _IsolateToFlAudioPort));

  @override
  _IsolateToFlAudioPort get _value => super._value as _IsolateToFlAudioPort;

  @override
  $Res call({
    Object id = freezed,
    Object album = freezed,
    Object artist = freezed,
    Object title = freezed,
    Object artUri = freezed,
    Object duration = freezed,
  }) {
    return _then(_IsolateToFlAudioPort(
      id: id == freezed ? _value.id : id as String,
      album: album == freezed ? _value.album : album as String,
      artist: artist == freezed ? _value.artist : artist as String,
      title: title == freezed ? _value.title : title as String,
      artUri: artUri == freezed ? _value.artUri : artUri as String,
      duration: duration == freezed ? _value.duration : duration as Duration,
    ));
  }
}

@JsonSerializable()
class _$_IsolateToFlAudioPort implements _IsolateToFlAudioPort {
  const _$_IsolateToFlAudioPort(
      {@required this.id,
      @required this.album,
      @required this.artist,
      @required this.title,
      @required this.artUri,
      @required this.duration})
      : assert(id != null),
        assert(album != null),
        assert(artist != null),
        assert(title != null),
        assert(artUri != null),
        assert(duration != null);

  factory _$_IsolateToFlAudioPort.fromJson(Map<String, dynamic> json) =>
      _$_$_IsolateToFlAudioPortFromJson(json);

  @override
  final String id;
  @override
  final String album;
  @override
  final String artist;
  @override
  final String title;
  @override
  final String artUri;
  @override
  final Duration duration;

  @override
  String toString() {
    return 'IsolateToFlAudioPort(id: $id, album: $album, artist: $artist, title: $title, artUri: $artUri, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IsolateToFlAudioPort &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.album, album) ||
                const DeepCollectionEquality().equals(other.album, album)) &&
            (identical(other.artist, artist) ||
                const DeepCollectionEquality().equals(other.artist, artist)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.artUri, artUri) ||
                const DeepCollectionEquality().equals(other.artUri, artUri)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(album) ^
      const DeepCollectionEquality().hash(artist) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(artUri) ^
      const DeepCollectionEquality().hash(duration);

  @override
  _$IsolateToFlAudioPortCopyWith<_IsolateToFlAudioPort> get copyWith =>
      __$IsolateToFlAudioPortCopyWithImpl<_IsolateToFlAudioPort>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IsolateToFlAudioPortToJson(this);
  }
}

abstract class _IsolateToFlAudioPort implements IsolateToFlAudioPort {
  const factory _IsolateToFlAudioPort(
      {@required String id,
      @required String album,
      @required String artist,
      @required String title,
      @required String artUri,
      @required Duration duration}) = _$_IsolateToFlAudioPort;

  factory _IsolateToFlAudioPort.fromJson(Map<String, dynamic> json) =
      _$_IsolateToFlAudioPort.fromJson;

  @override
  String get id;
  @override
  String get album;
  @override
  String get artist;
  @override
  String get title;
  @override
  String get artUri;
  @override
  Duration get duration;
  @override
  _$IsolateToFlAudioPortCopyWith<_IsolateToFlAudioPort> get copyWith;
}
