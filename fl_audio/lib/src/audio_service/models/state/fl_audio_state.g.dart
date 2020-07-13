// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fl_audio_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Fl_PlayerState _$_$Fl_PlayerStateFromJson(Map<String, dynamic> json) {
  return _$Fl_PlayerState(
    processingState: json['processingState'] == null
        ? null
        : FlAudioProcessingState.fromJson(
            json['processingState'] as Map<String, dynamic>),
    playing: json['playing'] as bool,
    speed: (json['speed'] as num)?.toDouble(),
    position: json['position'] == null
        ? null
        : Duration(microseconds: json['position'] as int),
    updateTime: json['updateTime'] == null
        ? null
        : Duration(microseconds: json['updateTime'] as int),
    bufferedPosition: json['bufferedPosition'] == null
        ? null
        : Duration(microseconds: json['bufferedPosition'] as int),
  );
}

Map<String, dynamic> _$_$Fl_PlayerStateToJson(_$Fl_PlayerState instance) =>
    <String, dynamic>{
      'processingState': instance.processingState,
      'playing': instance.playing,
      'speed': instance.speed,
      'position': instance.position?.inMicroseconds,
      'updateTime': instance.updateTime?.inMicroseconds,
      'bufferedPosition': instance.bufferedPosition?.inMicroseconds,
    };
