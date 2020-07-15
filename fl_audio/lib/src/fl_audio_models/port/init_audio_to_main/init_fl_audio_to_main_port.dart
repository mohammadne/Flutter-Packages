import 'package:freezed_annotation/freezed_annotation.dart';

part 'init_fl_audio_to_main_port.freezed.dart';
part 'init_fl_audio_to_main_port.g.dart';

@freezed
abstract class InitFlAudioToMainPort with _$InitFlAudioToMainPort {
  const factory InitFlAudioToMainPort({
    @required String id,
    @required String album,
    @required String artist,
    @required String title,
    @required String artUri,
    @required Duration duration,
  }) = _InitFlAudioToMainPortate;

  factory InitFlAudioToMainPort.fromJson(Map<String, dynamic> json) =>
      _$InitFlAudioToMainPortFromJson(json);
}
