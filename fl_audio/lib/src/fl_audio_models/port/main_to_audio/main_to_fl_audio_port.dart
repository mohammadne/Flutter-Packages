import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_to_fl_audio_port.freezed.dart';
part 'main_to_fl_audio_port.g.dart';

@freezed
abstract class MainToFlAudioPort with _$MainToFlAudioPort {
  const factory MainToFlAudioPort({
    @required String id,
    @required String album,
    @required String artist,
    @required String title,
    @required String artUri,
    @required Duration duration,
  }) = _InitMainToFlAudioPort;

  factory MainToFlAudioPort.fromJson(Map<String, dynamic> json) =>
      _$MainToFlAudioPortFromJson(json);
}
