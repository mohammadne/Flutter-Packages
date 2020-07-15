// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_fl_audio_to_isolate_port.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InitFlAudioToIsolatePort _$_$_InitFlAudioToIsolatePortFromJson(
    Map<String, dynamic> json) {
  return _$_InitFlAudioToIsolatePort(
    mediaItemIndex: json['mediaItemIndex'] as int,
    mediaItems: _fromMI(json['mediaItems'] as List),
    flAudioOrder: _fromFA(json['flAudioOrder']),
  );
}

Map<String, dynamic> _$_$_InitFlAudioToIsolatePortToJson(
        _$_InitFlAudioToIsolatePort instance) =>
    <String, dynamic>{
      'mediaItemIndex': instance.mediaItemIndex,
      'mediaItems': _toMI(instance.mediaItems),
      'flAudioOrder': _toFA(instance.flAudioOrder),
    };
