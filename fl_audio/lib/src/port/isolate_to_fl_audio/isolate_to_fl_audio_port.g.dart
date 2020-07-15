// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isolate_to_fl_audio_port.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IsolateToFlAudioPort _$_$_IsolateToFlAudioPortFromJson(
    Map<String, dynamic> json) {
  return _$_IsolateToFlAudioPort(
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

Map<String, dynamic> _$_$_IsolateToFlAudioPortToJson(
        _$_IsolateToFlAudioPort instance) =>
    <String, dynamic>{
      'id': instance.id,
      'album': instance.album,
      'artist': instance.artist,
      'title': instance.title,
      'artUri': instance.artUri,
      'duration': instance.duration?.inMicroseconds,
    };
