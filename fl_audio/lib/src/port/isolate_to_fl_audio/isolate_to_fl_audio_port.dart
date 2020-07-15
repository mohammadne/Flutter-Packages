import 'package:freezed_annotation/freezed_annotation.dart';

part 'isolate_to_fl_audio_port.freezed.dart';
part 'isolate_to_fl_audio_port.g.dart';

@freezed
abstract class IsolateToFlAudioPort with _$IsolateToFlAudioPort {
  const factory IsolateToFlAudioPort({
    @required String id,
    @required String album,
    @required String artist,
    @required String title,
    @required String artUri,
    @required Duration duration,
  }) = _IsolateToFlAudioPort;

  factory IsolateToFlAudioPort.fromJson(Map<String, dynamic> json) =>
      _$IsolateToFlAudioPortFromJson(json);
}
