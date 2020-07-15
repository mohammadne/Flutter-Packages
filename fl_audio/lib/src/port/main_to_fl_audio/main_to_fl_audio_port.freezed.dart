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

  _MainToFlAudioPort call(
      {@required String id,
      @required String album,
      @required String artist,
      @required String title,
      @required String artUri,
      @required Duration duration}) {
    return _MainToFlAudioPort(
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
const $MainToFlAudioPort = _$MainToFlAudioPortTearOff();

mixin _$MainToFlAudioPort {
  String get id;
  String get album;
  String get artist;
  String get title;
  String get artUri;
  Duration get duration;

  Map<String, dynamic> toJson();
  $MainToFlAudioPortCopyWith<MainToFlAudioPort> get copyWith;
}

abstract class $MainToFlAudioPortCopyWith<$Res> {
  factory $MainToFlAudioPortCopyWith(
          MainToFlAudioPort value, $Res Function(MainToFlAudioPort) then) =
      _$MainToFlAudioPortCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String album,
      String artist,
      String title,
      String artUri,
      Duration duration});
}

class _$MainToFlAudioPortCopyWithImpl<$Res>
    implements $MainToFlAudioPortCopyWith<$Res> {
  _$MainToFlAudioPortCopyWithImpl(this._value, this._then);

  final MainToFlAudioPort _value;
  // ignore: unused_field
  final $Res Function(MainToFlAudioPort) _then;

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

abstract class _$MainToFlAudioPortCopyWith<$Res>
    implements $MainToFlAudioPortCopyWith<$Res> {
  factory _$MainToFlAudioPortCopyWith(
          _MainToFlAudioPort value, $Res Function(_MainToFlAudioPort) then) =
      __$MainToFlAudioPortCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String album,
      String artist,
      String title,
      String artUri,
      Duration duration});
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
    Object id = freezed,
    Object album = freezed,
    Object artist = freezed,
    Object title = freezed,
    Object artUri = freezed,
    Object duration = freezed,
  }) {
    return _then(_MainToFlAudioPort(
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
class _$_MainToFlAudioPort implements _MainToFlAudioPort {
  const _$_MainToFlAudioPort(
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

  factory _$_MainToFlAudioPort.fromJson(Map<String, dynamic> json) =>
      _$_$_MainToFlAudioPortFromJson(json);

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
    return 'MainToFlAudioPort(id: $id, album: $album, artist: $artist, title: $title, artUri: $artUri, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainToFlAudioPort &&
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
  _$MainToFlAudioPortCopyWith<_MainToFlAudioPort> get copyWith =>
      __$MainToFlAudioPortCopyWithImpl<_MainToFlAudioPort>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MainToFlAudioPortToJson(this);
  }
}

abstract class _MainToFlAudioPort implements MainToFlAudioPort {
  const factory _MainToFlAudioPort(
      {@required String id,
      @required String album,
      @required String artist,
      @required String title,
      @required String artUri,
      @required Duration duration}) = _$_MainToFlAudioPort;

  factory _MainToFlAudioPort.fromJson(Map<String, dynamic> json) =
      _$_MainToFlAudioPort.fromJson;

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
  _$MainToFlAudioPortCopyWith<_MainToFlAudioPort> get copyWith;
}
