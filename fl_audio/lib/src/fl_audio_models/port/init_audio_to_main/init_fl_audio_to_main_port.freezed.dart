// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'init_fl_audio_to_main_port.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
InitFlAudioToMainPort _$InitFlAudioToMainPortFromJson(
    Map<String, dynamic> json) {
  return _InitFlAudioToMainPortate.fromJson(json);
}

class _$InitFlAudioToMainPortTearOff {
  const _$InitFlAudioToMainPortTearOff();

  _InitFlAudioToMainPortate call(
      {@required String id,
      @required String album,
      @required String artist,
      @required String title,
      @required String artUri,
      @required Duration duration}) {
    return _InitFlAudioToMainPortate(
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
const $InitFlAudioToMainPort = _$InitFlAudioToMainPortTearOff();

mixin _$InitFlAudioToMainPort {
  String get id;
  String get album;
  String get artist;
  String get title;
  String get artUri;
  Duration get duration;

  Map<String, dynamic> toJson();
  $InitFlAudioToMainPortCopyWith<InitFlAudioToMainPort> get copyWith;
}

abstract class $InitFlAudioToMainPortCopyWith<$Res> {
  factory $InitFlAudioToMainPortCopyWith(InitFlAudioToMainPort value,
          $Res Function(InitFlAudioToMainPort) then) =
      _$InitFlAudioToMainPortCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String album,
      String artist,
      String title,
      String artUri,
      Duration duration});
}

class _$InitFlAudioToMainPortCopyWithImpl<$Res>
    implements $InitFlAudioToMainPortCopyWith<$Res> {
  _$InitFlAudioToMainPortCopyWithImpl(this._value, this._then);

  final InitFlAudioToMainPort _value;
  // ignore: unused_field
  final $Res Function(InitFlAudioToMainPort) _then;

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

abstract class _$InitFlAudioToMainPortateCopyWith<$Res>
    implements $InitFlAudioToMainPortCopyWith<$Res> {
  factory _$InitFlAudioToMainPortateCopyWith(_InitFlAudioToMainPortate value,
          $Res Function(_InitFlAudioToMainPortate) then) =
      __$InitFlAudioToMainPortateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String album,
      String artist,
      String title,
      String artUri,
      Duration duration});
}

class __$InitFlAudioToMainPortateCopyWithImpl<$Res>
    extends _$InitFlAudioToMainPortCopyWithImpl<$Res>
    implements _$InitFlAudioToMainPortateCopyWith<$Res> {
  __$InitFlAudioToMainPortateCopyWithImpl(_InitFlAudioToMainPortate _value,
      $Res Function(_InitFlAudioToMainPortate) _then)
      : super(_value, (v) => _then(v as _InitFlAudioToMainPortate));

  @override
  _InitFlAudioToMainPortate get _value =>
      super._value as _InitFlAudioToMainPortate;

  @override
  $Res call({
    Object id = freezed,
    Object album = freezed,
    Object artist = freezed,
    Object title = freezed,
    Object artUri = freezed,
    Object duration = freezed,
  }) {
    return _then(_InitFlAudioToMainPortate(
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
class _$_InitFlAudioToMainPortate implements _InitFlAudioToMainPortate {
  const _$_InitFlAudioToMainPortate(
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

  factory _$_InitFlAudioToMainPortate.fromJson(Map<String, dynamic> json) =>
      _$_$_InitFlAudioToMainPortateFromJson(json);

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
    return 'InitFlAudioToMainPort(id: $id, album: $album, artist: $artist, title: $title, artUri: $artUri, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitFlAudioToMainPortate &&
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
  _$InitFlAudioToMainPortateCopyWith<_InitFlAudioToMainPortate> get copyWith =>
      __$InitFlAudioToMainPortateCopyWithImpl<_InitFlAudioToMainPortate>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InitFlAudioToMainPortateToJson(this);
  }
}

abstract class _InitFlAudioToMainPortate implements InitFlAudioToMainPort {
  const factory _InitFlAudioToMainPortate(
      {@required String id,
      @required String album,
      @required String artist,
      @required String title,
      @required String artUri,
      @required Duration duration}) = _$_InitFlAudioToMainPortate;

  factory _InitFlAudioToMainPortate.fromJson(Map<String, dynamic> json) =
      _$_InitFlAudioToMainPortate.fromJson;

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
  _$InitFlAudioToMainPortateCopyWith<_InitFlAudioToMainPortate> get copyWith;
}
