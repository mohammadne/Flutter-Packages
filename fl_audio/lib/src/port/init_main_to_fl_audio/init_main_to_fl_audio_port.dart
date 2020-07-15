import 'package:fl_audio/fl_audio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'init_main_to_fl_audio_port.freezed.dart';
part 'init_main_to_fl_audio_port.g.dart';

@freezed
abstract class InitMainToFlAudioPort with _$InitMainToFlAudioPort {
  const factory InitMainToFlAudioPort({
    int flAudioItemIndex,
    @required FlAudioOrder flAudioOrder,
    @required List<FlAudioItem> flAudioitems,
  }) = _InitMainToFlAudioPort;

  factory InitMainToFlAudioPort.fromJson(Map<String, dynamic> json) =>
      _$InitMainToFlAudioPortFromJson(json);
}
