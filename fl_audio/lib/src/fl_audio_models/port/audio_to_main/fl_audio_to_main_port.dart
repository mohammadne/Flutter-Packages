import 'package:freezed_annotation/freezed_annotation.dart';

part 'fl_audio_to_main_port.freezed.dart';
part 'fl_audio_to_main_port.g.dart';

@freezed
abstract class FlAudioToMainPort with _$FlAudioToMainPort {
  const factory FlAudioToMainPort({
    @required String id,
    @required String album,
    @required String artist,
    @required String title,
    @required String artUri,
    @required Duration duration,
  }) = _FlAudioToMainPortate;

  factory FlAudioToMainPort.fromJson(Map<String, dynamic> json) =>
      _$FlAudioToMainPortFromJson(json);
}