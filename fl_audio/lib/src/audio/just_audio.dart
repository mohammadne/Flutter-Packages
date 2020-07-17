import 'package:flutter/cupertino.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';

import 'models/state/audio_state.dart';
import 'audio_base.dart';

class JustAudio implements AudioBase {
  JustAudio({@required this.positionStreamInterval})
      : _audioPlayer = AudioPlayer(),
        assert(positionStreamInterval != null);
  final AudioPlayer _audioPlayer;
  final Duration positionStreamInterval;

  @override
  Future<Duration> setUrl(String uri) => _audioPlayer.setUrl(uri);

  @override
  Future<Duration> setAsset(String uri) => _audioPlayer.setAsset(uri);

  @override
  Future<Duration> setFilePath(String uri) => _audioPlayer.setFilePath(uri);

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
  Stream<AudioState> get audioStateStream =>
      Rx.combineLatest2<Duration, AudioState, AudioState>(
        positionStream,
        _audioPlayer.playbackStateStream.map((state) {
          switch (state) {
            case AudioPlaybackState.stopped:
              return AudioState.stopped();
            case AudioPlaybackState.paused:
              return AudioState.paused();
            case AudioPlaybackState.playing:
              return AudioState.playing();
            case AudioPlaybackState.connecting:
              return AudioState.connecting();
            case AudioPlaybackState.completed:
              return AudioState.completed();
            default:
              return AudioState.none();
          }
        }),
        (_, state) => state,
      );

  @override
  Stream<Duration> get positionStream =>
      _audioPlayer.getPositionStream(positionStreamInterval);

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
