// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'fl_audio_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FlAudioItem _$FlAudioItemFromJson(Map<String, dynamic> json) {
  return Fl_PlayerState.fromJson(json);
}

class _$FlAudioItemTearOff {
  const _$FlAudioItemTearOff();

  Fl_PlayerState call(
      {@required String id,
      @required String album,
      @required String artist,
      @required String title,
      @required String artUri,
      @required Duration duration}) {
    return Fl_PlayerState(
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

abstract class $Fl_PlayerStateCopyWith<$Res>
    implements $FlAudioItemCopyWith<$Res> {
  factory $Fl_PlayerStateCopyWith(
          Fl_PlayerState value, $Res Function(Fl_PlayerState) then) =
      _$Fl_PlayerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String album,
      String artist,
      String title,
      String artUri,
      Duration duration});
}

class _$Fl_PlayerStateCopyWithImpl<$Res> extends _$FlAudioItemCopyWithImpl<$Res>
    implements $Fl_PlayerStateCopyWith<$Res> {
  _$Fl_PlayerStateCopyWithImpl(
      Fl_PlayerState _value, $Res Function(Fl_PlayerState) _then)
      : super(_value, (v) => _then(v as Fl_PlayerState));

  @override
  Fl_PlayerState get _value => super._value as Fl_PlayerState;

  @override
  $Res call({
    Object id = freezed,
    Object album = freezed,
    Object artist = freezed,
    Object title = freezed,
    Object artUri = freezed,
    Object duration = freezed,
  }) {
    return _then(Fl_PlayerState(
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
class _$Fl_PlayerState implements Fl_PlayerState {
  const _$Fl_PlayerState(
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

  factory _$Fl_PlayerState.fromJson(Map<String, dynamic> json) =>
      _$_$Fl_PlayerStateFromJson(json);

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
        (other is Fl_PlayerState &&
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
  $Fl_PlayerStateCopyWith<Fl_PlayerState> get copyWith =>
      _$Fl_PlayerStateCopyWithImpl<Fl_PlayerState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$Fl_PlayerStateToJson(this);
  }
}

abstract class Fl_PlayerState implements FlAudioItem {
  const factory Fl_PlayerState(
      {@required String id,
      @required String album,
      @required String artist,
      @required String title,
      @required String artUri,
      @required Duration duration}) = _$Fl_PlayerState;

  factory Fl_PlayerState.fromJson(Map<String, dynamic> json) =
      _$Fl_PlayerState.fromJson;

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
  $Fl_PlayerStateCopyWith<Fl_PlayerState> get copyWith;
}
