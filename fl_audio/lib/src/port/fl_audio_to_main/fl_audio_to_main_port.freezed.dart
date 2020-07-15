// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'fl_audio_to_main_port.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FlAudioToMainPort _$FlAudioToMainPortFromJson(Map<String, dynamic> json) {
  return _FlAudioToMainPortate.fromJson(json);
}

class _$FlAudioToMainPortTearOff {
  const _$FlAudioToMainPortTearOff();

  _FlAudioToMainPortate call(
      {@required String id,
      @required String album,
      @required String artist,
      @required String title,
      @required String artUri,
      @required Duration duration}) {
    return _FlAudioToMainPortate(
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
const $FlAudioToMainPort = _$FlAudioToMainPortTearOff();

mixin _$FlAudioToMainPort {
  String get id;
  String get album;
  String get artist;
  String get title;
  String get artUri;
  Duration get duration;

  Map<String, dynamic> toJson();
  $FlAudioToMainPortCopyWith<FlAudioToMainPort> get copyWith;
}

abstract class $FlAudioToMainPortCopyWith<$Res> {
  factory $FlAudioToMainPortCopyWith(
          FlAudioToMainPort value, $Res Function(FlAudioToMainPort) then) =
      _$FlAudioToMainPortCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String album,
      String artist,
      String title,
      String artUri,
      Duration duration});
}

class _$FlAudioToMainPortCopyWithImpl<$Res>
    implements $FlAudioToMainPortCopyWith<$Res> {
  _$FlAudioToMainPortCopyWithImpl(this._value, this._then);

  final FlAudioToMainPort _value;
  // ignore: unused_field
  final $Res Function(FlAudioToMainPort) _then;

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

abstract class _$FlAudioToMainPortateCopyWith<$Res>
    implements $FlAudioToMainPortCopyWith<$Res> {
  factory _$FlAudioToMainPortateCopyWith(_FlAudioToMainPortate value,
          $Res Function(_FlAudioToMainPortate) then) =
      __$FlAudioToMainPortateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String album,
      String artist,
      String title,
      String artUri,
      Duration duration});
}

class __$FlAudioToMainPortateCopyWithImpl<$Res>
    extends _$FlAudioToMainPortCopyWithImpl<$Res>
    implements _$FlAudioToMainPortateCopyWith<$Res> {
  __$FlAudioToMainPortateCopyWithImpl(
      _FlAudioToMainPortate _value, $Res Function(_FlAudioToMainPortate) _then)
      : super(_value, (v) => _then(v as _FlAudioToMainPortate));

  @override
  _FlAudioToMainPortate get _value => super._value as _FlAudioToMainPortate;

  @override
  $Res call({
    Object id = freezed,
    Object album = freezed,
    Object artist = freezed,
    Object title = freezed,
    Object artUri = freezed,
    Object duration = freezed,
  }) {
    return _then(_FlAudioToMainPortate(
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
class _$_FlAudioToMainPortate implements _FlAudioToMainPortate {
  const _$_FlAudioToMainPortate(
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

  factory _$_FlAudioToMainPortate.fromJson(Map<String, dynamic> json) =>
      _$_$_FlAudioToMainPortateFromJson(json);

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
    return 'FlAudioToMainPort(id: $id, album: $album, artist: $artist, title: $title, artUri: $artUri, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FlAudioToMainPortate &&
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
  _$FlAudioToMainPortateCopyWith<_FlAudioToMainPortate> get copyWith =>
      __$FlAudioToMainPortateCopyWithImpl<_FlAudioToMainPortate>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FlAudioToMainPortateToJson(this);
  }
}

abstract class _FlAudioToMainPortate implements FlAudioToMainPort {
  const factory _FlAudioToMainPortate(
      {@required String id,
      @required String album,
      @required String artist,
      @required String title,
      @required String artUri,
      @required Duration duration}) = _$_FlAudioToMainPortate;

  factory _FlAudioToMainPortate.fromJson(Map<String, dynamic> json) =
      _$_FlAudioToMainPortate.fromJson;

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
  _$FlAudioToMainPortateCopyWith<_FlAudioToMainPortate> get copyWith;
}
