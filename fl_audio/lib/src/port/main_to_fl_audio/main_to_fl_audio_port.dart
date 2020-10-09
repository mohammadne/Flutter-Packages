import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/order/fl_audio_order.dart';

part 'main_to_fl_audio_port.freezed.dart';
part 'main_to_fl_audio_port.g.dart';

@freezed
abstract class MainToFlAudioPort with _$MainToFlAudioPort {
  const factory MainToFlAudioPort({
    @required FlAudioOrder flAudioOrder,
  }) = _MainToFlAudioPort;

  factory MainToFlAudioPort.fromJson(Map<String, dynamic> json) =>
      _$MainToFlAudioPortFromJson(json);
}
