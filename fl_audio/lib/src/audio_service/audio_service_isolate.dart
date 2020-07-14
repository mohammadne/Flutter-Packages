import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:audio_service/audio_service.dart';
import 'package:hive/hive.dart';

import 'package:fl_audio/src/fl_audio_models/order/fl_audio_order.dart';
import 'package:fl_audio/src/audio/models/state/audio_state.dart';
import 'package:fl_audio/src/audio/audio_base.dart';
import 'package:fl_audio/src/audio/just_audio.dart';

class AudioServiceIsolate extends BackgroundAudioTask {
  /// The prefix of hive items
  final _hivePrefix = 'audio_service_isolate';

  /// This duration specify in which interval should save position
  Duration _positionInterval = Duration(seconds: 2);

  /// The Player instance
  AudioBase _player;

  /// This field specify order state of playing items
  FlAudioOrder _flAudioOrder;

  /// specify current playing item in queue
  int _mediaItemIndex;

  /// This List is current media items in queue
  List<MediaItem> _mediaItems;

  bool get _hasMediaItems => _mediaItems.isEmpty;
  int get _mediaItemsLength => _mediaItems.length;
  bool get _isFirstMediaItem => _mediaItemIndex == 0;
  bool get _isLastMediaItem => _mediaItemIndex == _mediaItemsLength - 1;

  /// Transmitter
  // void _transmiteAudioEventToMain(AudioPortToMain audioPortToMain) =>
  //     AudioServiceBackground.sendCustomEvent(audioPortToMain);

  @override
  Future onCustomAction(_, arguments) async {}

  @override
  Future<void> onStart(Map<String, dynamic> params) async {
    /// Initialization
    _player = JustAudio();
    final pos = await _hiveInitial();

    /// Subscriptions
    _positionSubscriber();
    _audioStateSubscriber();
    // _transmiteAudioEventToMain();
  }

  Future<int> _hiveInitial() async {
    /// Initializing application dir
    final appDocDir = await path_provider.getApplicationDocumentsDirectory();

    /// Hive initialization and registrations
    Hive.init(appDocDir.path);
    Hive.registerAdapter<FlAudioOrder>(FlAudioOrderAdapter());

    /// AudioItemOrder
    final flAudioOrderBox =
        await Hive.openBox<FlAudioOrder>('${_hivePrefix}_fl_audio_order');
    _flAudioOrder = flAudioOrderBox.get(0) ?? FlAudioOrder.order;

    /// Position
    final initPositionBox = await Hive.openBox<int>('${_hivePrefix}_position');
    return initPositionBox.get(0) ?? 0;
  }

  Stream<void> _positionSubscriber() {
    return Stream<void>.periodic(_positionInterval, (_) {
      print('position is on $_player.position.inSeconds');
      Hive.box('${_hivePrefix}_position').put(0, _player.position.inSeconds);
    });
  }

  StreamSubscription<AudioState> _audioStateSubscriber() {
    return _player.playerStateStream.listen((state) {
      state.when(
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
      );
    });
  }

  void _handlePlayerCompletion() async {
    switch (_flAudioOrder) {
      case FlAudioOrder.order:
        if (_isLastMediaItem) {
          onPause();
        } else {
          _skip(1);
        }
        break;
      case FlAudioOrder.repeatAll:
        if (_isLastMediaItem) {
          onSkipToQueueItem(_mediaItems.first.id);
        } else {
          _skip(1);
        }
        break;
      case FlAudioOrder.repeatOne:
        await onStop();
        onPlay();
        break;
      case FlAudioOrder.shuffle:
        int random = Random().nextInt(_mediaItemsLength);
        onSkipToQueueItem(_mediaItems[random].id);
        break;
    }
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
        bufferedPosition: _player.bufferedPosition,
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
    await Hive.close();
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
    final mediaItem = AudioService.currentMediaItem;
    if (pos < Duration.zero) _player.seek(Duration.zero);
    if (pos > mediaItem.duration) _player.seek(mediaItem.duration);
    await _player.seek(pos);
  }

  /// Skipping

  @override
  void onSkipToNext() {
    switch (_flAudioOrder) {
      case FlAudioOrder.shuffle:
        int random = Random().nextInt(_mediaItemsLength);
        onSkipToQueueItem(_mediaItems[random].id);
        break;
      default:
        if (_isLastMediaItem) {
          onSkipToQueueItem(_mediaItems.first.id);
        } else {
          _skip(1);
        }
    }
  }

  @override
  void onSkipToPrevious() {
    switch (_flAudioOrder) {
      case FlAudioOrder.shuffle:
        int random = Random().nextInt(_mediaItemsLength);
        onSkipToQueueItem(_mediaItems[random].id);
        break;
      default:
        if (_isFirstMediaItem) {
          onSkipToQueueItem(_mediaItems.last.id);
        } else {
          _skip(-1);
        }
    }
  }

  @override
  void onSkipToQueueItem(String mediaId) => onPlayFromMediaId(mediaId);

  Future<void> _skip(int offset) async {
    final pos = _mediaItemIndex + offset;
    if (!(pos >= 0 && pos < _mediaItemsLength)) return;
    _mediaItemIndex = pos;
    // TODO: stop current audio
    // await _player.stop();
    MediaItem mediaItem = _mediaItems[pos];
    AudioServiceBackground.setMediaItem(mediaItem);
    // TODO: path of downloaded files
    await _player.setUrl(mediaItem.id);
    onPlay();
  }

  /// Updating

  @override
  Future<void> onUpdateQueue(List<MediaItem> queue) async {
    AudioServiceBackground.setQueue(queue);
    _mediaItems = queue;
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
    onPause();
  }

  @override
  void onAudioFocusGained(AudioInterruption interruption) {
    onPlay();
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
        if (AudioServiceBackground.state.playing)
          onPause();
        else
          onPlay();
        break;
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
