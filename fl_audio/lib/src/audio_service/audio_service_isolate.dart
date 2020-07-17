import 'dart:async';
import 'dart:math';

import 'package:audio_service/audio_service.dart';
import 'package:flutter/foundation.dart';

import 'package:fl_audio/src/port/init_fl_audio_to_isolate/init_fl_audio_to_isolate_port.dart';
import 'package:fl_audio/src/fl_audio_models/order/fl_audio_order.dart';
import 'package:fl_audio/src/audio/models/state/audio_state.dart';
import 'package:fl_audio/src/audio/audio_base.dart';
import 'package:fl_audio/src/audio/just_audio.dart';
import 'package:fl_audio/fl_audio.dart';
import 'package:rxdart/rxdart.dart';

import '../port/fl_audio_to_isolate/fl_audio_to_isolate_port.dart';

class AudioServiceIsolate extends BackgroundAudioTask {
  /// The Player instance
  AudioBase _player;

  /// This field specify order state of playing items
  FlAudioOrder _flAudioOrder;

  /// specify current playing item in queue
  int _mediaItemIndex;

  /// This List is current media items in queue
  List<MediaItem> _mediaItems;

  /// This fiekd is use when audio focusing has been changed to handle interruptions
  bool _isInterrupted = false;

  int get _mediaItemsLength => _mediaItems.length;
  bool get _isFirstMediaItem => _mediaItemIndex == 0;
  MediaItem get _currentMediaItem => _mediaItems[_mediaItemIndex];
  bool get _isLastMediaItem => _mediaItemIndex == _mediaItemsLength - 1;

  @override
  Future onCustomAction(name, arguments) async {
    final args = new Map<String, dynamic>.from(arguments);

    /// Call for initialization of audio service isolate
    if (name == 'initial') {
      final port = InitFlAudioToIsolatePort.fromJson(args);
      _mediaItemIndex = port.mediaItemIndex;
      _mediaItems = port.mediaItems;
      _flAudioOrder = port.flAudioOrder;
    } else if (name == 'normal') {
      final port = FlAudioToIsolatePort.fromJson(args);
      _flAudioOrder = port.flAudioOrder;
    }
  }

  @override
  Future<void> onStart(Map<String, dynamic> params) async {
    /// The interval updates of position is choosen for 200 milSec
    _player = JustAudio(positionStreamInterval: Duration(milliseconds: 200));
    _audioStateSubscriber();
  }

  /// Subscriber for diffrent player States
  /// With the change to add stream preiodic to emit playerStateStream
  /// now this listener will trigger at that period and so is not needed
  /// to use PlayBackEvent from AudioService
  StreamSubscription<AudioState> _audioStateSubscriber() =>
      _player.audioStateStream.listen(
        (state) => state.when(
          completed: () => _handlePlayerCompletion(),
          playing: () => _setState(
            isPlaying: true,
            processingState: _player.isBuffering
                ? AudioProcessingState.buffering
                : AudioProcessingState.ready,
          ),
          paused: () => _setState(
            isPlaying: false,
            processingState: _player.isBuffering
                ? AudioProcessingState.buffering
                : AudioProcessingState.ready,
          ),
          stopped: () => _setState(
            isPlaying: false,
            processingState: AudioProcessingState.stopped,
          ),
          connecting: () => _setState(
            isPlaying: false,
            processingState: AudioProcessingState.connecting,
          ),
          none: () => _setState(
            isPlaying: false,
            processingState: AudioProcessingState.none,
          ),
        ),
      );

  void _handlePlayerCompletion() async {
    _flAudioOrder.when(
      order: () {
        if (_isLastMediaItem) {
          onPause();
        } else {
          _skip(1);
        }
      },
      repeatAll: () {
        if (_isLastMediaItem) {
          onSkipToQueueItem(_mediaItems.first.id);
        } else {
          _skip(1);
        }
      },
      repeatOne: () async {
        await onStop();
        onPlay();
      },
      shuffle: () {
        int random = Random().nextInt(_mediaItemsLength);
        onSkipToQueueItem(_mediaItems[random].id);
      },
    );
  }

  Future<void> _setState({
    @required bool isPlaying,
    AudioProcessingState processingState,
  }) async =>
      await AudioServiceBackground.setState(
        controls: _getControls(isPlaying),
        systemActions: [MediaAction.seekTo],
        processingState:
            processingState ?? AudioServiceBackground.state.processingState,
        playing: isPlaying,
        position: _player.position,
        bufferedPosition: _player.bufferedPosition ?? _player.position,
        speed: _player.speed,
      );

  @override
  void onPlay() {
    _player.play();
  }

  @override
  void onPlayFromMediaId(String mediaId) {
    final reqIndex = _mediaItems.indexWhere(
      (mediaItem) => mediaItem.id == mediaId,
    );
    _skip(reqIndex - _mediaItemIndex);
  }

  @override
  void onPause() {
    _player.pause();
  }

  @override
  Future<void> onStop() async {
    await _player.stop();
    await super.onStop();
  }

  @override
  void onClose() => onStop();

  /// Seeking

  @override
  void onSeekTo(Duration position) {
    _player.seek(position);
  }

  @override
  void onFastForward() {
    _seekRelative(fastForwardInterval);
  }

  @override
  void onRewind() {
    _seekRelative(-rewindInterval);
  }

  Future<void> _seekRelative(Duration offset) async {
    final pos = _player.position + offset;
    if (pos < Duration.zero) _player.seek(Duration.zero);
    if (pos > _currentMediaItem.duration)
      _player.seek(_currentMediaItem.duration);
    await _player.seek(pos);
  }

  @override
  void onSetSpeed(double speed) {
    _player.setSpeed(speed);
  }

  /// Skipping

  @override
  void onSkipToNext() {
    _flAudioOrder.maybeWhen(
      shuffle: () {
        int random = Random().nextInt(_mediaItemsLength);
        onSkipToQueueItem(_mediaItems[random].id);
      },
      orElse: () {
        if (_isLastMediaItem) {
          onSkipToQueueItem(_mediaItems.first.id);
        } else {
          _skip(1);
        }
      },
    );
  }

  @override
  void onSkipToPrevious() {
    _flAudioOrder.maybeWhen(
      shuffle: () {
        int random = Random().nextInt(_mediaItemsLength);
        onSkipToQueueItem(_mediaItems[random].id);
      },
      orElse: () {
        if (_isFirstMediaItem) {
          onSkipToQueueItem(_mediaItems.last.id);
        } else {
          _skip(-1);
        }
      },
    );
  }

  @override
  void onSkipToQueueItem(String mediaId) => onPlayFromMediaId(mediaId);

  Future<void> _skip(int offset) async {
    /// calculate newPos and if it can skip on to it
    final pos = _mediaItemIndex + offset;
    if (!(pos >= 0 && pos < _mediaItemsLength)) return;
    _mediaItemIndex = pos;

    /// we should stop the audio instantly in response to user
    if (AudioServiceBackground.state.playing) await _player.stop();

    /// set newly choosen mediaItem and set it's url
    MediaItem mediaItem = _mediaItems[pos];
    AudioServiceBackground.setMediaItem(mediaItem);

    /// set path of audio and play it
    await _setUrlWithSource(mediaItem);
    onPlay();
  }

  Future<void> _setUrlWithSource(MediaItem item) async {
    // TODO: path of downloaded files
    try {
      await _player.setUrl(item.id);
    } catch (e) {
      print(e);
      _setState(
        isPlaying: false,
        processingState: AudioProcessingState.error,
      );
    }
  }

  /// Updating

  @override
  Future<void> onUpdateQueue(List<MediaItem> queue) async {
    /// we should stop the audio instantly in response to user
    if (AudioServiceBackground.state.playing) await _player.stop();

    /// set newly queue
    await AudioServiceBackground.setQueue(queue);
    _mediaItems = queue;
    _mediaItemIndex = 0;

    _skip(0);
  }

  @override
  Future<void> onUpdateMediaItem(MediaItem mediaItem) async {
    final index = _mediaItems.indexWhere((item) => item == mediaItem);
    if (_mediaItemIndex != index) {
      _mediaItems[index] = mediaItem;
    } else {
      // TODO: pause current playing + resume newly edited item
    }
  }

  /// Adding Item to queue

  @override
  void onAddQueueItem(MediaItem mediaItem) {
    _mediaItems.add(mediaItem);
  }

  @override
  void onAddQueueItemAt(MediaItem mediaItem, int index) {
    _mediaItems.insert(index, mediaItem);
    // because the current playing item index should increment
    if (_mediaItemIndex >= index) _mediaItemIndex++;
  }

  /// Audio Focusing

  @override
  void onAudioFocusLost(AudioInterruption interruption) {
    final playing = AudioServiceBackground.state.playing;
    if (playing) _isInterrupted = true;
    switch (interruption) {
      case AudioInterruption.pause:
      case AudioInterruption.temporaryPause:
      case AudioInterruption.unknownPause:
        onPause();
        break;
      case AudioInterruption.temporaryDuck:
        _player.setVolume(0.5);
        break;
    }
  }

  @override
  void onAudioFocusGained(AudioInterruption interruption) {
    final playing = AudioServiceBackground.state.playing;
    switch (interruption) {
      case AudioInterruption.temporaryPause:
        if (!playing && _isInterrupted) onPlay();
        break;
      case AudioInterruption.temporaryDuck:
        _player.setVolume(1.0);
        break;
      default:
        break;
    }
    _isInterrupted = false;
  }

  @override
  void onAudioBecomingNoisy() {
    onPause();
  }

  /// Headset Controls

  @override
  void onClick(MediaButton button) {
    switch (button) {
      case MediaButton.next:
        onSkipToNext();
        break;
      case MediaButton.previous:
        onSkipToPrevious();
        break;
      case MediaButton.media:
        _handleMediaActionPressed();
        break;
    }
  }

  /// Handle headset multitime pressing mediaButton
  BehaviorSubject<int> _tappedMediaActionNumber;
  Timer _timer;

  void _handleMediaActionPressed() {
    if (_timer == null) {
      /// Feeding Streams with 600 milSec rest
      _tappedMediaActionNumber = BehaviorSubject.seeded(1);
      _timer = Timer(Duration(milliseconds: 600), () {
        /// handle what to do with mediaaction
        final tappedNumber = _tappedMediaActionNumber.value;
        if (tappedNumber == 1) {
          if (AudioServiceBackground.state.playing)
            onPause();
          else
            onPlay();
        } else if (tappedNumber == 2) {
          onSkipToNext();
        } else {
          onSkipToPrevious();
        }

        /// Unfeeding streams
        _tappedMediaActionNumber.close();
        _timer.cancel();
        _timer = null;
      });
    } else {
      final current = _tappedMediaActionNumber.value;
      _tappedMediaActionNumber.add(current + 1);
    }
  }

  List<MediaControl> _getControls(bool isPlaying) {
    if (isPlaying) {
      return [
        skipToPreviousControl,
        pauseControl,
        skipToNextControl,
        stopControl,
      ];
    } else {
      return [
        skipToPreviousControl,
        playControl,
        skipToNextControl,
        stopControl,
      ];
    }
  }
}

MediaControl playControl = MediaControl(
  androidIcon: 'drawable/ic_action_play_arrow',
  label: 'Play',
  action: MediaAction.play,
);
MediaControl pauseControl = MediaControl(
  androidIcon: 'drawable/ic_action_pause',
  label: 'Pause',
  action: MediaAction.pause,
);
MediaControl skipToNextControl = MediaControl(
  androidIcon: 'drawable/ic_action_skip_next',
  label: 'Next',
  action: MediaAction.skipToNext,
);
MediaControl skipToPreviousControl = MediaControl(
  androidIcon: 'drawable/ic_action_skip_previous',
  label: 'Previous',
  action: MediaAction.skipToPrevious,
);
MediaControl stopControl = MediaControl(
  androidIcon: 'drawable/ic_action_stop',
  label: 'Stop',
  action: MediaAction.stop,
);
