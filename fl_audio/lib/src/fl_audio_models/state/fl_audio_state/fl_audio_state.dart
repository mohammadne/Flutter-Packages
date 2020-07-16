import 'package:freezed_annotation/freezed_annotation.dart';

import '../fl_audio_processing_state/fl_audio_processing_state.dart';

part 'fl_audio_state.freezed.dart';
part 'fl_audio_state.g.dart';

@freezed
abstract class FlAudioState with _$FlAudioState {
  const factory FlAudioState({
    @required FlAudioProcessingState processingState,
    Duration duration,
    @required bool playing,
    @required double speed,
    @required Duration position,
    @required Duration updateTime,
    @required Duration bufferedPosition,
  }) = _FlAudioState;

  factory FlAudioState.fromJson(Map<String, dynamic> json) =>
      _$FlAudioStateFromJson(json);
}
