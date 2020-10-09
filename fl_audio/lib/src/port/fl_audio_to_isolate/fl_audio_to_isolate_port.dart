import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/order/fl_audio_order.dart';

part 'fl_audio_to_isolate_port.freezed.dart';
part 'fl_audio_to_isolate_port.g.dart';

@freezed
abstract class FlAudioToIsolatePort with _$FlAudioToIsolatePort {
  const factory FlAudioToIsolatePort({
    @required
    @JsonKey(toJson: _toFA, fromJson: _fromFA)
        FlAudioOrder flAudioOrder,
  }) = _FlAudioToIsolatePort;

  factory FlAudioToIsolatePort.fromJson(Map<String, dynamic> json) =>
      _$FlAudioToIsolatePortFromJson(json);
}

Map<String, String> _toFA(FlAudioOrder flAudioOrder) =>
    Map<String, String>.from(flAudioOrder?.toJson());

FlAudioOrder _fromFA(json) =>
    FlAudioOrder.fromJson(Map<String, String>.from(json));
