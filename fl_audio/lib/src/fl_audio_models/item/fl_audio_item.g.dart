// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fl_audio_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Fl_PlayerState _$_$Fl_PlayerStateFromJson(Map<String, dynamic> json) {
  return _$Fl_PlayerState(
    id: json['id'] as String,
    album: json['album'] as String,
    artist: json['artist'] as String,
    title: json['title'] as String,
    artUri: json['artUri'] as String,
    duration: json['duration'] == null
        ? null
        : Duration(microseconds: json['duration'] as int),
  );
}

Map<String, dynamic> _$_$Fl_PlayerStateToJson(_$Fl_PlayerState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'album': instance.album,
      'artist': instance.artist,
      'title': instance.title,
      'artUri': instance.artUri,
      'duration': instance.duration?.inMicroseconds,
    };
