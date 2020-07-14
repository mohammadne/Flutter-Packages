import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_state.freezed.dart';
part 'audio_state.g.dart';

@freezed
abstract class AudioState with _$AudioState {
  const factory AudioState.none() = None;
  const factory AudioState.connecting() = Connecting;
  const factory AudioState.playing() = Playing;
  const factory AudioState.paused() = Paused;
  const factory AudioState.completed() = Completed;
  const factory AudioState.stopped() = Stopped;

  factory AudioState.fromJson(Map<String, dynamic> json) =>
      _$AudioStateFromJson(json);
}
