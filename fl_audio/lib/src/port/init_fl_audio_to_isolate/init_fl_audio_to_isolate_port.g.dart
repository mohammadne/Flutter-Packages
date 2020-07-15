// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_fl_audio_to_isolate_port.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InitFlAudioToIsolatePort _$_$_InitFlAudioToIsolatePortFromJson(
    Map<String, dynamic> json) {
  return _$_InitFlAudioToIsolatePort(
    mediaItemIndex: json['mediaItemIndex'] as int,
    flAudioOrder: json['flAudioOrder'] as Map<String, dynamic>,
    flAudioitems: (json['flAudioitems'] as List)
        ?.map((e) => e as Map<String, dynamic>)
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_InitFlAudioToIsolatePortToJson(
        _$_InitFlAudioToIsolatePort instance) =>
    <String, dynamic>{
      'mediaItemIndex': instance.mediaItemIndex,
      'flAudioOrder': instance.flAudioOrder,
      'flAudioitems': instance.flAudioitems,
    };
