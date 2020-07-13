import 'package:just_audio/just_audio.dart';

import 'models/state/audio_player_state.dart';
import 'audio_player_base.dart';

class JustAudio implements AudioPlayerBase {
  JustAudio() : _audioPlayer = AudioPlayer();
  final AudioPlayer _audioPlayer;

  @override
  Future<Duration> setUrl(String uri) => _audioPlayer.setUrl(uri);

  @override
  Future play() => _audioPlayer.play();

  @override
  Future pause() => _audioPlayer.pause();

  @override
  Future seek(Duration duration) => _audioPlayer.seek(duration);

  @override
  Future setSpeed(double speed) => _audioPlayer.setSpeed(speed);

  @override
  Future setVolume(double volume) => _audioPlayer.setVolume(volume);

  @override
  Future stop() => _audioPlayer.stop();

  @override
  Future dispose() => _audioPlayer.dispose();

  @override
  Stream<AudioPlayerState> get playerStateStream =>
      _audioPlayer.playbackStateStream.map((state) {
        switch (state) {
          case AudioPlaybackState.stopped:
            return AudioPlayerState.stopped();
          case AudioPlaybackState.paused:
            return AudioPlayerState.paused();
          case AudioPlaybackState.playing:
            return AudioPlayerState.playing();
          case AudioPlaybackState.connecting:
            return AudioPlayerState.connecting();
          case AudioPlaybackState.completed:
            return AudioPlayerState.completed();
          default:
            return AudioPlayerState.none();
        }
      });

  @override
  Stream<Duration> get positionStream =>
      _audioPlayer.playbackEventStream.map((event) => event.position);

  @override
  Stream<Duration> get bufferedPositionStream =>
      _audioPlayer.bufferedPositionStream;

  @override
  Stream<bool> get isBufferingStream => _audioPlayer.bufferingStream;

  @override
  Stream<Duration> get durationStream => _audioPlayer.durationStream;

  @override
  Stream<double> get speedStream =>
      _audioPlayer.playbackEventStream.map((event) => event.speed);

  @override
  Stream<Duration> get volumeStream => throw UnimplementedError();

  @override
  double get volume => _audioPlayer.volume;

  @override
  Duration get position => _audioPlayer.playbackEvent.position;

  @override
  Duration get bufferedPosition => _audioPlayer.playbackEvent.bufferedPosition;

  @override
  bool get isBuffering => _audioPlayer.buffering;

  @override
  Duration get duration => _audioPlayer.playbackEvent.duration;

  @override
  double get speed => _audioPlayer.playbackEvent.speed;
}
