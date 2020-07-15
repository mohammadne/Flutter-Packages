// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fl_audio_to_main_port.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlAudioToMainPortate _$_$_FlAudioToMainPortateFromJson(
    Map<String, dynamic> json) {
  return _$_FlAudioToMainPortate(
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

Map<String, dynamic> _$_$_FlAudioToMainPortateToJson(
        _$_FlAudioToMainPortate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'album': instance.album,
      'artist': instance.artist,
      'title': instance.title,
      'artUri': instance.artUri,
      'duration': instance.duration?.inMicroseconds,
    };
