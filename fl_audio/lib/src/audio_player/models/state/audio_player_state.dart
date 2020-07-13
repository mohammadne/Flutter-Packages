import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_player_state.freezed.dart';
part 'audio_player_state.g.dart';

@freezed
abstract class AudioPlayerState with _$AudioPlayerState {
  const factory AudioPlayerState.none() = None;
  const factory AudioPlayerState.connecting() = Connecting;
  const factory AudioPlayerState.playing() = Playing;
  const factory AudioPlayerState.paused() = Paused;
  const factory AudioPlayerState.completed() = Completed;
  const factory AudioPlayerState.stopped() = Stopped;

  factory AudioPlayerState.fromJson(Map<String, dynamic> json) =>
      _$AudioPlayerStateFromJson(json);
}
