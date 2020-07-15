import 'package:freezed_annotation/freezed_annotation.dart';

part 'fl_audio_to_isolate_port.freezed.dart';
part 'fl_audio_to_isolate_port.g.dart';

@freezed
abstract class FlAudioToIsolatePort with _$FlAudioToIsolatePort {
  const factory FlAudioToIsolatePort({
    @required String id,
  }) = _FlAudioToIsolatePort;

  factory FlAudioToIsolatePort.fromJson(Map<String, dynamic> json) =>
      _$FlAudioToIsolatePortFromJson(json);
}
