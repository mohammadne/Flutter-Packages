import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:audio_service/audio_service.dart';
import 'package:fl_audio/fl_audio.dart';

part 'init_fl_audio_to_isolate_port.freezed.dart';
part 'init_fl_audio_to_isolate_port.g.dart';

@freezed
abstract class InitFlAudioToIsolatePort with _$InitFlAudioToIsolatePort {
  const factory InitFlAudioToIsolatePort({
    int mediaItemIndex,
    @required
    @JsonKey(toJson: _toMI, fromJson: _fromMI)
        List<MediaItem> mediaItems,
    @required
    @JsonKey(toJson: _toFA, fromJson: _fromFA)
        FlAudioOrder flAudioOrder,
  }) = _InitFlAudioToIsolatePort;

  factory InitFlAudioToIsolatePort.fromJson(Map<String, dynamic> json) =>
      _$InitFlAudioToIsolatePortFromJson(json);
}

List<dynamic> _toMI(List<MediaItem> mediaItems) =>
    mediaItems.map((item) => item?.toJson()).toList();

List<MediaItem> _fromMI(List<dynamic> json) => json
    .map((item) => MediaItem.fromJson(item as Map<String, dynamic>))
    .toList();

Map<String, String> _toFA(FlAudioOrder flAudioOrder) =>
    Map<String, String>.from(flAudioOrder?.toJson());

FlAudioOrder _fromFA(json) =>
    FlAudioOrder.fromJson(Map<String, String>.from(json));
