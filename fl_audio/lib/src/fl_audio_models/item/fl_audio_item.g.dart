// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fl_audio_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlAudioItem _$_$_FlAudioItemFromJson(Map<String, dynamic> json) {
  return _$_FlAudioItem(
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

Map<String, dynamic> _$_$_FlAudioItemToJson(_$_FlAudioItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'album': instance.album,
      'artist': instance.artist,
      'title': instance.title,
      'artUri': instance.artUri,
      'duration': instance.duration?.inMicroseconds,
    };
