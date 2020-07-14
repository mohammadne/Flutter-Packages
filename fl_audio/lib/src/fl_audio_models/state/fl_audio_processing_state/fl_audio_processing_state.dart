import 'package:freezed_annotation/freezed_annotation.dart';

part 'fl_audio_processing_state.freezed.dart';
part 'fl_audio_processing_state.g.dart';

@freezed
abstract class FlAudioProcessingState with _$FlAudioProcessingState {
  const factory FlAudioProcessingState.none() = _None;
  const factory FlAudioProcessingState.ready() = _Ready;
  const factory FlAudioProcessingState.buffering() = _Buffering;
  const factory FlAudioProcessingState.fastForwarding() = _FastForwarding;
  const factory FlAudioProcessingState.rewinding() = _Rewinding;
  const factory FlAudioProcessingState.completed() = _Completed;
  const factory FlAudioProcessingState.stopped() = _Stopped;
  const factory FlAudioProcessingState.error() = _Error;
  const factory FlAudioProcessingState.waiting() = _Waiting;
  const factory FlAudioProcessingState.skippingToNext() = _SkippingToNext;
  const factory FlAudioProcessingState.skippingToPervious() =
      _SkippingToPervious;

  factory FlAudioProcessingState.fromJson(Map<String, dynamic> json) =>
      _$FlAudioProcessingStateFromJson(json);
}
