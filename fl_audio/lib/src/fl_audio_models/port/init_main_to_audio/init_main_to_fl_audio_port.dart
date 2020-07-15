import 'package:freezed_annotation/freezed_annotation.dart';

part 'init_main_to_fl_audio_port.freezed.dart';
part 'init_main_to_fl_audio_port.g.dart';

@freezed
abstract class InitMainToFlAudioPort with _$InitMainToFlAudioPort {
  const factory InitMainToFlAudioPort({
    @required String id,
    @required String album,
    @required String artist,
    @required String title,
    @required String artUri,
    @required Duration duration,
  }) = _InitMainToFlAudioPort;

  factory InitMainToFlAudioPort.fromJson(Map<String, dynamic> json) =>
      _$InitMainToFlAudioPortFromJson(json);
}
