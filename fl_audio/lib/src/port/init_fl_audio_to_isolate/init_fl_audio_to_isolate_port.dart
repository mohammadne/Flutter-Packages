import 'package:freezed_annotation/freezed_annotation.dart';

part 'init_fl_audio_to_isolate_port.freezed.dart';
part 'init_fl_audio_to_isolate_port.g.dart';

@freezed
abstract class InitFlAudioToIsolatePort with _$InitFlAudioToIsolatePort {
  const factory InitFlAudioToIsolatePort({
    @required int mediaItemIndex,
    @required Map<String, dynamic> flAudioOrder,
    @required List<Map<String, dynamic>> flAudioitems,
  }) = _InitFlAudioToIsolatePort;

  factory InitFlAudioToIsolatePort.fromJson(Map<String, dynamic> json) =>
      _$InitFlAudioToIsolatePortFromJson(json);
}
