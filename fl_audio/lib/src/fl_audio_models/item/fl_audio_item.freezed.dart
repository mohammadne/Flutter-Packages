// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'fl_audio_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FlAudioItem _$FlAudioItemFromJson(Map<String, dynamic> json) {
  return _FlAudioItem.fromJson(json);
}

class _$FlAudioItemTearOff {
  const _$FlAudioItemTearOff();

  _FlAudioItem call(
      {@required String id,
      @required String album,
      @required String artist,
      @required String title,
      @required String artUri,
      @required Duration duration}) {
    return _FlAudioItem(
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
const $FlAudioItem = _$FlAudioItemTearOff();

mixin _$FlAudioItem {
  String get id;
  String get album;
  String get artist;
  String get title;
  String get artUri;
  Duration get duration;

  Map<String, dynamic> toJson();
  $FlAudioItemCopyWith<FlAudioItem> get copyWith;
}

abstract class $FlAudioItemCopyWith<$Res> {
  factory $FlAudioItemCopyWith(
          FlAudioItem value, $Res Function(FlAudioItem) then) =
      _$FlAudioItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String album,
      String artist,
      String title,
      String artUri,
      Duration duration});
}

class _$FlAudioItemCopyWithImpl<$Res> implements $FlAudioItemCopyWith<$Res> {
  _$FlAudioItemCopyWithImpl(this._value, this._then);

  final FlAudioItem _value;
  // ignore: unused_field
  final $Res Function(FlAudioItem) _then;

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

abstract class _$FlAudioItemCopyWith<$Res>
    implements $FlAudioItemCopyWith<$Res> {
  factory _$FlAudioItemCopyWith(
          _FlAudioItem value, $Res Function(_FlAudioItem) then) =
      __$FlAudioItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String album,
      String artist,
      String title,
      String artUri,
      Duration duration});
}

class __$FlAudioItemCopyWithImpl<$Res> extends _$FlAudioItemCopyWithImpl<$Res>
    implements _$FlAudioItemCopyWith<$Res> {
  __$FlAudioItemCopyWithImpl(
      _FlAudioItem _value, $Res Function(_FlAudioItem) _then)
      : super(_value, (v) => _then(v as _FlAudioItem));

  @override
  _FlAudioItem get _value => super._value as _FlAudioItem;

  @override
  $Res call({
    Object id = freezed,
    Object album = freezed,
    Object artist = freezed,
    Object title = freezed,
    Object artUri = freezed,
    Object duration = freezed,
  }) {
    return _then(_FlAudioItem(
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
class _$_FlAudioItem implements _FlAudioItem {
  const _$_FlAudioItem(
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

  factory _$_FlAudioItem.fromJson(Map<String, dynamic> json) =>
      _$_$_FlAudioItemFromJson(json);

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
    return 'FlAudioItem(id: $id, album: $album, artist: $artist, title: $title, artUri: $artUri, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FlAudioItem &&
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
  _$FlAudioItemCopyWith<_FlAudioItem> get copyWith =>
      __$FlAudioItemCopyWithImpl<_FlAudioItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FlAudioItemToJson(this);
  }
}

abstract class _FlAudioItem implements FlAudioItem {
  const factory _FlAudioItem(
      {@required String id,
      @required String album,
      @required String artist,
      @required String title,
      @required String artUri,
      @required Duration duration}) = _$_FlAudioItem;

  factory _FlAudioItem.fromJson(Map<String, dynamic> json) =
      _$_FlAudioItem.fromJson;

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
  _$FlAudioItemCopyWith<_FlAudioItem> get copyWith;
}
