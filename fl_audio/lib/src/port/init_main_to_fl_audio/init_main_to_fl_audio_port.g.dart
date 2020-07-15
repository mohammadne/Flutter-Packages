// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_main_to_fl_audio_port.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InitMainToFlAudioPort _$_$_InitMainToFlAudioPortFromJson(
    Map<String, dynamic> json) {
  return _$_InitMainToFlAudioPort(
    flAudioItemIndex: json['flAudioItemIndex'] as int,
    flAudioOrder: json['flAudioOrder'] == null
        ? null
        : FlAudioOrder.fromJson(json['flAudioOrder'] as Map<String, dynamic>),
    flAudioitems: (json['flAudioitems'] as List)
        ?.map((e) =>
            e == null ? null : FlAudioItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_InitMainToFlAudioPortToJson(
        _$_InitMainToFlAudioPort instance) =>
    <String, dynamic>{
      'flAudioItemIndex': instance.flAudioItemIndex,
      'flAudioOrder': instance.flAudioOrder,
      'flAudioitems': instance.flAudioitems,
    };
